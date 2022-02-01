package br.com.generation.Listas.HerancaPolimorfismo.Exercicio1;

public class Animal {
	protected String nome;
	protected String som;
	protected String icone;
	protected boolean temRabo;
	protected int idade;
	protected int quantidadePatas;
	
	public void emitirSom() {
		System.out.println("O " + nome + " está emitindo um som... " + this.som); 
	}
	
	public void mover() {
		System.out.println("O " + nome + " está correndo  " + this.icone);
	};
}

