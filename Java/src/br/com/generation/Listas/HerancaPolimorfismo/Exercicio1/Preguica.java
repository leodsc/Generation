package br.com.generation.Listas.HerancaPolimorfismo.Exercicio1;

public class Preguica extends Animal {
	public Preguica(String nome, int idade, int quantidadePatas,
			String som, String icone, boolean temRabo) {
		this.nome = nome;
		this.idade = idade;
		this.quantidadePatas = quantidadePatas;
		this.som = som;
		this.icone = icone;
		this.temRabo = temRabo;
	}
	
	public void mover() {
		System.out.println("A preguiça está subindo na árvore...");
	}
}
