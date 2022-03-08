package com.lojadegames.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
	public class BasicSecurityConfig extends WebSecurityConfigurerAdapter {

		@Autowired
		private UserDetailsService userDetailsService;
		
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			
			 auth.userDetailsService(userDetailsService);

			 auth.inMemoryAuthentication()
				.withUser("root")
				.password(passwordEncoder().encode("root"))
				.authorities("ROLE_USER");
			
		}
		
		@Bean
		public PasswordEncoder passwordEncoder() {
			return new BCryptPasswordEncoder();
		}
		
		 @Override
			protected void configure(HttpSecurity http) throws Exception {

				http
				.csrf().disable()
					.authorizeRequests()
					.antMatchers("/usuarios/logar").permitAll()
					.antMatchers("/usuarios/cadastrar").permitAll()
					.antMatchers(HttpMethod.OPTIONS).permitAll()
					.anyRequest().authenticated()
					.and().httpBasic()
					.and().sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
					.and().cors();
					
			}
		
	}