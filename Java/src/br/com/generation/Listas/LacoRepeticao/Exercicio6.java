package br.com.generation.Listas.LacoRepeticao;

import java.util.Scanner;

public class Exercicio6 {
	public static void main(String[] args) {
		int numero, total = 0, quantidade = 0;
		double media;
		Scanner sc = new Scanner(System.in);
		
		do {
			System.out.print("Digite um número: ");
			numero = sc.nextInt();
			if (numero % 3 == 0) {
				quantidade++;
				total += numero;
			}
		} while (numero != 0);

		sc.close();
		media = (double) total/quantidade;
		System.out.println("A média do total de números divisiveis por 3 é: " + media);
	}
}
