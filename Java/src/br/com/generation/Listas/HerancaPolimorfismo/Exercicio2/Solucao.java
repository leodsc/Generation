package br.com.generation.Listas.HerancaPolimorfismo.Exercicio2;

import br.com.generation.Listas.HerancaPolimorfismo.Exercicio1.*;

public class Solucao {
	public static void main(String[] args) {
		Cachorro cachorro = new Cachorro("Bud", 14, 4, "auau", "🐶", true);
		Cavalo cavalo = new Cavalo("Pegasus", 5, 4, "iihihii", "🐴", true);
		Preguica preguica = new Preguica("Ninja", 2, 4, "aaaaaaaaaa", "🦥", false);
		
		cachorro.emitirSom();
		cachorro.mover();
		cavalo.emitirSom();
		cavalo.mover();
		preguica.emitirSom();
		preguica.mover();
	}
}
