package br.com.generation.Lista;

import java.util.Scanner;

public class Exercicio6 {
    public static void main(String[] args) {
        double x1, y1, x2, y2, d;
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite a coordenada x do primeiro ponto: ");
        x1 = sc.nextDouble();
        System.out.print("Digite a coordenada y do primeiro ponto: ");
        y1 = sc.nextDouble();
        System.out.print("Digite a coordenada x do segundo ponto: ");
        x2 = sc.nextDouble();
        System.out.print("Digite a coordenada y do segundo ponto: ");
        y2 = sc.nextDouble();

        sc.close();
        d = Math.sqrt(Math.pow((x2-x1), 2) + Math.pow((y2-y1), 2));
        System.out.println("A distância é de " + d);
    }
}
