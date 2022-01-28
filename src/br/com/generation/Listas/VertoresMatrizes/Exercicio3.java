package br.com.generation.Listas.VertoresMatrizes;

public class Exercicio3 {
	public static void main(String[] args) throws InterruptedException {
		final double[][] N1 = new double[4][6];
		final double[][] N2 = new double[4][6];
		final double[][] M1 = new double[4][6];
		final double[][] M2 = new double[4][6];
		String matriz;
		
		for (int i = 0; i < N1.length; i++) {
			for (int j = 0; j < N1[i].length; j++) {
				N1[i][j] = Math.random()*100;
				N2[i][j] = Math.random()*100;
				M1[i][j] = N1[i][j] + N2[i][j];
				M2[i][j] = N1[i][j] - N2[i][j];
			}
		}
		
		System.out.println("======= RESULTADO DAS CONTAS ========");
		for (int k = 0; k < 2; k++) {
			matriz = k == 0 ? "M1" : "M2";
			System.out.println(matriz);
			for (int i = 0; i < N1.length; i++) {
				for (int j = 0; j < N1[i].length; j++) {
					if (k == 0) {
						System.out.printf("[%.2f] ", M1[i][j]);
					} else {
						System.out.printf("[%.2f] ", M2[i][j]);
					}
				}
				Thread.sleep(500);
				System.out.printf("\n");
			}
			System.out.println();
		}
	}
}
