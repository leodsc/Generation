package br.com.generation.Aulas.A03;

import java.util.Scanner;

public class MatrizExemplo02 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		double[][] matriz = new double[2][4];
		System.out.println("===Notas dos Alunos===");
		
		for (int i = 0; i < matriz.length; i++) {
			for (int k = 0; k < matriz[i].length; k++) {
				System.out.printf("Digite as notas: [%d][%d] ", i, k);
				matriz[i][k] = sc.nextDouble();
			}
			System.out.println();
		}
	}
}
