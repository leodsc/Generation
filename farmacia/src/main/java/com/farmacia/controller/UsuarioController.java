package com.farmacia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.farmacia.model.Usuario;
import com.farmacia.service.UserDetailsServiceImpl;
import com.farmacia.service.UsuarioLogin;

@RestController
@RequestMapping("/usuarios")
public class UsuarioController {
	
	@Autowired
	private UserDetailsServiceImpl service;

	@PostMapping("/registrar")
	public ResponseEntity<Usuario> registrar(@RequestBody Usuario user) {
		return service.registrar(user);
	}
	
	@PostMapping("/login")
	public ResponseEntity<UsuarioLogin> login(@RequestBody Usuario user) {
			String token = service.login(user);
			if (token != null) {
				UsuarioLogin userLogin = new UsuarioLogin(user.getUsername(), token);
				return ResponseEntity.ok().body(userLogin);
			} else {
				return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(null);
			}
	}
}
