package br.com.generation.Lista;

import java.util.Scanner;

public class Exercicio8 {
    private static final double PERCENTAGEM_DISTRIBUIDOR = 0.25;
    private static final double PERCENTAGEM_IMPOSTOS = 0.45;

    public static void main(String[] args) {
        double custoTotal, custoFabrica;
        Scanner sc = new Scanner(System.in);

        System.out.print("Qual o custo de fábrica? ");
        custoFabrica = sc.nextDouble();
        custoTotal = custoFabrica+custoFabrica*PERCENTAGEM_DISTRIBUIDOR+custoFabrica*PERCENTAGEM_IMPOSTOS;
        System.out.println("O custo total é de R$ " + custoTotal);

        sc.close();
    }
}
