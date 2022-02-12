package br.com.generation.Listas.OrientacaoObjetos;

public class Aviao {
	private final int TURBINAS = 2;
	private int anoFabricacao;
	private int quantidadeAssentos;
	private int velocidadeMaxima;
	private int velocidade;
	private String modelo;
	
	public int getTurbinas() {
		return TURBINAS;
	}
	
	
	public int getAnoFabricacao() {
		return anoFabricacao;
	}
	
	public void setAnoFabricacao(int anoFabricacao) {
		this.anoFabricacao = anoFabricacao;
	}
	
	public int getQuantidadeAssentos() {
		return quantidadeAssentos;
	}
	
	public void setQuantidadeAssentos(int quantidadeAssentos) {
		this.quantidadeAssentos = quantidadeAssentos;
	}
	
	public int getVelocidadeMaxima() {
		return velocidadeMaxima;
	}
	
	public void setVelocidadeMaxima(int velocidadeMaxima) {
		this.velocidadeMaxima = velocidadeMaxima;
	}
	
	public String getModelo() {
		return modelo;
	}
	
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	
	public void ligar() {
		System.out.println("Avião ligado e acelerando...... atual velocidade: " + velocidade + " km/h");
	}
	
	public void decolar() {
		System.out.println("Decolando");
	}
	
	public void acelerar() throws InterruptedException {
		while (velocidade < 50) {
			velocidade += 10;
			System.out.println("Acelerando ....... atual velocidade: " + velocidade + " km/h");
			Thread.sleep(1000);
		}
	}

	public void voar() throws InterruptedException {
		ligar();
		acelerar();
		decolar();
	}
}
