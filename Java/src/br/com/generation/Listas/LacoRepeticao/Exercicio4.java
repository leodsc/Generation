package br.com.generation.Listas.LacoRepeticao;

import java.util.Scanner;

public class Exercicio4 {
	public static void main(String[] args) {
		final int QUANTIDADE_PESSOAS = 150;
		int sexo, idade, humor, i = 0;
		int pessoasCalmas = 0, mulheresNervosas = 0, homensAgressivos = 0;
		int outrosCalmos = 0, adultosNervosos= 0, jovensCalmos= 0;
		Scanner sc = new Scanner(System.in);
		
		while (i < QUANTIDADE_PESSOAS) {
			System.out.print("Digite sua idade: ");
			idade = sc.nextInt();
			System.out.println("Digite o seu sexo: ");
			System.out.printf("1-Feminino\n2-Masculino\n3-Outros\n");
			sexo = sc.nextInt();
			System.out.println("Digite seu humor: ");
			System.out.printf("1-Calma\n2-Nervosa\n3-Agressiva\n");
			humor = sc.nextInt();
			
			if (humor == 1) {
				pessoasCalmas++;
			} if (sexo == 1 && humor == 2) {
				mulheresNervosas++;
			} if (sexo == 2 && humor == 3) {
				homensAgressivos++;
			} if (sexo == 3 && humor == 1) {
				outrosCalmos++;
			} if (humor == 2 && idade > 40) {
				adultosNervosos++;
			} if (humor == 1 && idade < 18) {
				jovensCalmos++;
			}
			i++;
		}
		
		sc.close();
		
		System.out.println("O número de pessoas calmas é de " + pessoasCalmas + " pessoa(s)");
		System.out.println("O número de mulheres nervosas é de " + mulheresNervosas + " pessoa(s)");
		System.out.println("O número de homens agressivos é de " + homensAgressivos + " pessoa(s)");
		System.out.println("O número de outros calmos é de " + outrosCalmos + " pessoa(s)");
		System.out.println("O número de pessoas nervosas com mais de 40 anos é de " + adultosNervosos + " pessoa(s)");
		System.out.println("O número de pessoas calmas com menos de 18 anos é de " + jovensCalmos + " pessoa(s)");
	}
}
