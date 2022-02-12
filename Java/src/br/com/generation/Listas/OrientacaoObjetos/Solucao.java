package br.com.generation.Listas.OrientacaoObjetos;

import java.util.Scanner;

public class Solucao {
	public static void main(String[] args) throws InterruptedException {
		Cliente cliente = new Cliente();
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Digite a sua idade: ");
		int idade = sc.nextInt();
		sc.nextLine();
		System.out.println("Digite o seu nome: ");
		String nome = sc.nextLine();
		System.out.println("Digite o seu endereço: ");
		String endereco = sc.nextLine();
		System.out.println("Digite a sua cidade: ");
		String cidade = sc.nextLine();

		sc.close();

		cliente.criar(idade, nome, endereco, cidade);
		cliente.logar();
		cliente.comprar();
		
		System.out.println("Carregando exercicio 2..........");
		Thread.sleep(4000);
		Aviao aviao = new Aviao();
		aviao.setAnoFabricacao(2000);
		aviao.setModelo("boing");
		aviao.setQuantidadeAssentos(500);
		aviao.setVelocidadeMaxima(750);
		
		String modelo = aviao.getModelo();
		int anoFabricacao = aviao.getAnoFabricacao();
		int quantidadeAssentos = aviao.getQuantidadeAssentos();
		int velocidadeMaxima = aviao.getVelocidadeMaxima();

		System.out.println("O modelo é: " + modelo);
		System.out.println("O ano de fabricação é: " + anoFabricacao);
		System.out.println("A quantidade de assentos é: " + quantidadeAssentos);
		System.out.println("O velocidade máxima é: " + velocidadeMaxima);
		
		aviao.voar();
	}
}
