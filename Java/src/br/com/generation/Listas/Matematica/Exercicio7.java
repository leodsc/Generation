package br.com.generation.Lista;

import java.util.Scanner;

public class Exercicio7 {
    public static void main(String[] args) {
        double a, b, c, d, e, f, x, y;

        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o valor de a: ");
        a = sc.nextDouble();
        System.out.print("Digite o valor de b: ");
        b = sc.nextDouble();
        System.out.print("Digite o valor de c: ");
        c = sc.nextDouble();
        System.out.print("Digite o valor de d: ");
        d = sc.nextDouble();
        System.out.print("Digite o valor de e: ");
        e = sc.nextDouble();
        System.out.print("Digite o valor de f: ");
        f = sc.nextDouble();

        x = (c*e-b*f)/(a*e-b*d);
        y = (a*f-c*d)/(a*e-b*d);

        System.out.println("O resultado de x é " + x);
        System.out.println("O resultado de y é " + y);
    }
}
