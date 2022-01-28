package br.com.generation.Listas.LacoRepeticao;

import java.util.Scanner;

public class Exercicio2 {
	public static void main(String[] args) {
		int numero, paresTotal = 0, imparesTotal = 0;
		Scanner sc = new Scanner(System.in);
		
		for (int i = 0; i < 10; i++) {
			numero = sc.nextInt();
			if (numero % 2 == 0) {
				paresTotal += 1;
			} else {
				imparesTotal += 1;
			}
		}

		sc.close();
		System.out.printf("O total de ímpares é igual a %d\nO total de pares é igual a %d\n", imparesTotal, paresTotal);
	}
}
