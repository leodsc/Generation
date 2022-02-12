package br.com.generation.Lista;

import java.util.Scanner;

public class Main {
    private static int ANO_ATUAL = 2022;
    private static int MES_ATUAL = 1;
    private static int DIA_ATUAL = 26;

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] meses = new int[]{ 31, 28, 31, 30, 31, 30, 31, 31, 30, 30, 31 };
        int ano, mes, dia, total;

        System.out.print("Digite o ano de seu nascimento: ");
        ano = sc.nextInt();
        System.out.print("Digite o mês de seu nascimento: ");
        mes = sc.nextInt();
        System.out.print("Digite o dia de seu nascimento: ");
        dia = sc.nextInt();

    }
}
