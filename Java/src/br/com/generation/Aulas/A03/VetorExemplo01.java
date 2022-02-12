package br.com.generation.Aulas.A03;

public class VetorExemplo01 {
	public static void main(String[] args) {
		// podemos inicializar um vetor com uma determinada quantidade de espaços igual a 10 
		int[] array = new int[10];
		
		for (int i = 0; i < 10; i++) {
			System.out.println(i + " - " + array[i]);
		}
	}
}
