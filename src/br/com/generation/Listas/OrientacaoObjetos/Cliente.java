package br.com.generation.Listas.OrientacaoObjetos;

/*
 * exericio 1
 * Crie uma classe cliente e apresente os atributos e métodos referentes
	esta classe, em seguida crie um objeto cliente, defina as instancias deste
	objeto e apresente as informações deste objeto no console.
 */
// exemplo sem setter e getters

public class Cliente {
	private int totalUsuarios = 0;
	private int id;
	private int idade;
	private String nome;
	private String endereco;
	private String cidade;
	
	public void criar(int idade, String nome, String endereco, String cidade) {
		this.totalUsuarios += 1;
		this.id = totalUsuarios;
		this.idade = idade;
		this.nome = nome;
		this.endereco = endereco;
		this.cidade = cidade;
	}

	public void comprar() {
		System.out.println("O usuário com identificação " + this.id + " comprou um novo produto.");
	}
	
	public void logar() {
		System.out.println("O usuário com identificação " + this.id + " acabou de entrar.");
	}
}
