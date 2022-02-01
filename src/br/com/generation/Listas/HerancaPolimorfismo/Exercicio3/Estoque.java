package br.com.generation.Listas.HerancaPolimorfismo.Exercicio3;

import java.util.ArrayList;

public class Estoque {
	private ArrayList<String> estoque = new ArrayList<>();
	
	public void adicionar(String item) {
		this.estoque.add(item);
		System.out.println(item + " foi adicionado!");
	}
	
	public void remover(String item) {
		for (int i = 0; i < estoque.size(); i++) {
			if (estoque.get(i) == item) {
				this.estoque.remove(i);
				break;
			}
		}
	}
}
