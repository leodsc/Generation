package br.com.generation.Listas.LacoDecisao;

import java.util.Scanner;

public class Exercicio2 {
	public static void main(String[] args) {
		int[] valores = new int[3];
		Scanner scanner = new Scanner(System.in);
		
		for (int i = 0; i < 3; i++) {
			valores[i] = scanner.nextInt();
		}
		
		scanner.close();
		bubbleSort(valores);
	}
	
	private static void bubbleSort(int[] valores) {
		int temp;
		
		for (int i = 0; i < 3; i++) {
			for (int j = i; j < 3; j++) {
				if (valores[i] >= valores[j]) {
					temp = valores[i];
					valores[i] = valores[j];
					valores[j] = temp;
				}
			}
		}
		System.out.printf("A ordem dos números é %d %d %d\n", valores[0], valores[1], valores[2]);
	}
}
