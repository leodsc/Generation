package br.com.generation.Listas.VertoresMatrizes;

import java.util.Scanner;

public class Exercicio4 {
	public static void main(String[] args) {
		double[][] matriz = new double[3][3];
		double somaValores = 0.0, somaDiagonalPrincipal = 0.0;
		Scanner sc = new Scanner(System.in);
		
		for (int i = 0; i < 3; i++) {
			for (int j = 0; j < 3; j++) {
				System.out.printf("Digite o valor da posição [%d][%d]: ", i, j);
				matriz[i][j] = sc.nextDouble();
				somaValores += matriz[i][j];
				if (i == j) {
					somaDiagonalPrincipal += matriz[i][j];
				}
			}
		}
		sc.close();

		System.out.printf("A soma dos valores é %.2f e da diagonal principal é %.2f", somaValores, somaDiagonalPrincipal);
	}
}
