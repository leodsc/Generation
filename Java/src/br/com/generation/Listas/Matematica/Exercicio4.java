package br.com.generation.Lista;

import java.util.Scanner;

public class Exercicio4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int A, B, C, D;
        double R, S;

        System.out.print("Digite o número A: ");
        A = sc.nextInt();
        System.out.print("Digite o número B: ");
        B = sc.nextInt();
        System.out.print("Digite o número C: ");
        C = sc.nextInt();
        System.out.print("Digite o número D: ");
        D = sc.nextInt();

        sc.close();
        R = pow(A+B);
        S = pow(D+C);
        System.out.println("O resultado é: " + (R+S)/2);
    }

    private static double pow(int number) {
        return Math.pow(number, 2);
    }
}
