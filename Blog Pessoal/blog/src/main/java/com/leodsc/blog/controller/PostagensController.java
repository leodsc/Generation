package com.leodsc.blog.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.leodsc.blog.model.Postagem;

@RestController
@RequestMapping("/postagens")
public class PostagensController{
	@GetMapping
	public List<Postagem> hello() {
		Postagem post = new Postagem(
				"Minha primeira postagem",
				"Lorem ipsum Lorem ipsum Lorem ipsum"
				);
		return List.of(new Postagem(
				"Minha primeira postagem",
				"Lorem ipsum lorem ipsym lorem"
				));
	}
}
