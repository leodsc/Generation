package com.leodsc.blog.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table
public class Postagem {
	@Id
	@SequenceGenerator(
			name="postagem_sequence",
			sequenceName = "postagem_sequence",
			allocationSize=1
			)
	@GeneratedValue(
		strategy = GenerationType.SEQUENCE
		)
	private long id;

	private String titulo;
	private String text;
	private Date data = new java.sql.Date(System.currentTimeMillis());
	
	public Postagem(String titulo, String text) {
		this.titulo = titulo;
		this.text = text;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}
}