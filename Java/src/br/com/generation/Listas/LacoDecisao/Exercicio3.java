package br.com.generation.Listas.LacoDecisao;

import java.util.Scanner;

public class Exercicio3 {
	public static void main(String[] args) {
		double idade;
		Scanner sc = new Scanner(System.in);
		
		System.out.printf("Digite a sua idade: ");
		idade = sc.nextDouble();
		sc.close();

		System.out.printf("Você é da categoria: ");
		if (idade >= 10 && idade <= 14) {
			System.out.println("infantil.");
		} else if (idade >= 15 && idade <= 17) {
			System.out.println("juvenil.");
		} else if (idade >= 18 && idade <= 25) {
			System.out.println("adulto.");
		} else {
			System.out.println("nenhuma. Digitou um valor inválido.");
		}
	}
}
