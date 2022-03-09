package com.farmacia.service;

import java.nio.charset.Charset;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.farmacia.model.Usuario;
import com.farmacia.repository.UsuarioRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private UsuarioRepository repo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Usuario user = repo.findByUsername(username)
				.map(resp -> resp)
				.orElseThrow(() -> new UsernameNotFoundException("nome de usuario nao foi achado."));
		System.out.println(user.getPassword());
		UserDetails usuario = User.builder()
				.username(user.getUsername())
				.password(user.getPassword())
				.roles("USER")
				.build();
		return usuario;
	}	
	
	public String login(Usuario user) {
		var usuario = loadUserByUsername(user.getUsername());
		boolean isPasswordRight = passwordEncoder().matches(user.getPassword(), usuario.getPassword());
		return isPasswordRight ? generateBase64Code(user.getUsername(), usuario.getPassword()) 
				: null;
	}
	
	public String generateBase64Code(String username, String password) {
		String token = username + ":" + password;
		byte[] tokenBase64 = Base64.encodeBase64(token.getBytes(Charset.forName("US-ASCII")));
		return "Basic " + new String(tokenBase64);
	}

	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	public ResponseEntity<Usuario> registrar(Usuario user) {
		user.setPassword(passwordEncoder().encode(user.getPassword()));
		return ResponseEntity.ok().body(repo.save(user));
	}
}
