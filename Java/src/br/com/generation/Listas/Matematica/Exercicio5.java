package br.com.generation.Lista;

import java.util.Scanner;

public class Exercicio5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double[] pesos = { 2, 3, 5};
        double nota, total = 0.0;

        for (int i = 0; i < 3; i++) {
            System.out.print("Coloque a sua " + (i + 1) + "° nota: ");
            nota = sc.nextDouble();
            total += nota*pesos[i];
        }

        sc.close();
        System.out.println("Sua média é de: " + total/10);
    }
}
