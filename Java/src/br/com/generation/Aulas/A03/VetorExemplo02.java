package br.com.generation.Aulas.A03;

import java.util.Scanner;

public class VetorExemplo02 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		double[] notas = new double[4];
		double soma = 0.0, media = 0.0;
		
		System.out.println("Digite as quatro notas do Aluno: "); 
		for (int i = 0; i <= 3; i++) {
			System.out.println((i+1) + "° Nota: ");
			notas[i] = sc.nextDouble();
			
			soma += notas[i];
		}
		sc.close();
		media = soma /4;
		System.out.println("A média do aluno é " + media);
	}
}
