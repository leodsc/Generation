package br.com.generation.Listas.LacoDecisao;

import java.util.Scanner;

public class Exercicio1 {
	public static void main(String[] args) {
		int a, b, c;
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("Digite o primeiro valor: ");
		a = scanner.nextInt();
		System.out.print("Digite o segundo valor: ");
		b = scanner.nextInt();
		System.out.print("Digite o terceiro valor: ");
		c = scanner.nextInt();

		scanner.close();

		if (a > b && a > c) {
			System.out.println("O primeiro valor é o maior: " + a);
		} else if (b > a && b > c) {
			System.out.println("O segundo valor é o maior: " + b );
		} else {
			System.out.println("O terceiro valor é o maior: " + c);
		}
	}
}