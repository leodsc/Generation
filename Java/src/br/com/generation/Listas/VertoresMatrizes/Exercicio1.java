package br.com.generation.Listas.VertoresMatrizes;

import java.util.Scanner;

public class Exercicio1 {
	public static void main(String[] args) {
		double[] notas = new double[5];
		Scanner sc = new Scanner(System.in);

		for (int i = 0; i < 5; i++) {
			System.out.printf("Insira a %d° nota: ", i+1);
			notas[i] = sc.nextDouble();
		}
		sc.close();
		
		for (int i = 0; i < 5; i++) {
			System.out.printf("A %d° nota é: %.2f\n", i+1, notas[i]);
		}
	}
}
