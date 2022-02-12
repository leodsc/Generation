package br.com.generation.Lista;

import java.util.Scanner;

public class Exercicio2 {
    public static void main(String[] args) {
        double input, dias, meses, anos;
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite sua idade em dias: ");
        input = sc.nextInt();
        sc.close();

        anos = input/365;
        meses = ((anos- (int) anos)*1000/30);
        dias = ((meses - (int) meses)*10);
        System.out.println("Você tem " + (int) anos + " anos " + (int) meses + " meses e " + (int) dias + " dias");
    }
}
