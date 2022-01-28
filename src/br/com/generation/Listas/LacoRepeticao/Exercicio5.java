package br.com.generation.Listas.LacoRepeticao;

import java.util.Scanner;

public class Exercicio5 {
	public static void main(String[] args) {
		double numero, total = 0;
		Scanner sc = new Scanner(System.in);
		
		do {
			System.out.print("Digite um número: ");
			numero = sc.nextDouble();
			total += numero;
		} while (numero != 0);
		
		sc.close();
		System.out.println("O total é de " + total);
	}
}
