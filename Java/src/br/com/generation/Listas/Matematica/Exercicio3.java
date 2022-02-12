package br.com.generation.Lista;

import java.util.Scanner;

public class Exercicio3 {
    public static void main(String[] args) {
        double horas = 0, minutos = 0, segundos = 0, input;
        Scanner sc = new Scanner(System.in);
        System.out.print("Quantos segundos durou o processo? ");
        input = sc.nextInt();
        sc.close();

        if (input >= 3600) {
            horas = input / 3600;
            minutos = (horas - (int) horas)*60;
            segundos = (minutos - (int) minutos)*60;
        } else if (input >= 60) {
            minutos = input / 60;
            segundos = (minutos - (int) minutos)*100;
        } else {
            segundos = input;
        }
        System.out.print("O processo durou um total de " + (int) horas + " hora(s) ");
        System.out.println( (int) minutos + " minuto(s) " + (int) segundos + " segundo(s)");
    }
}
