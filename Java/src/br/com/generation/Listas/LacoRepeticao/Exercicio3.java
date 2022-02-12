package br.com.generation.Listas.LacoRepeticao;

import java.util.Scanner;

public class Exercicio3 {
	public static void main(String[] args) {
		int idade, totalJovens = 0, totalAdultos = 0;
		Scanner sc = new Scanner(System.in);

		System.out.printf("Digite sua idade: ");
		idade = sc.nextInt();

		while (idade != -99) {
			if (idade < 21) {
				totalJovens++;
			} else if (idade > 50) {
				totalAdultos++;
			} 
			System.out.printf("Digite sua idade: ");
			idade = sc.nextInt();
		}
		
		sc.close();
		System.out.printf("O total de jovens é: %d\nO total de adultos é: %d\nO programa foi encerrado\n", totalJovens, totalAdultos);
	}
}
