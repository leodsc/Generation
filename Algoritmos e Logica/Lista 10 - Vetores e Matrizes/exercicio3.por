programa
{
	inclua biblioteca Util

	funcao inicio()
	{
		// cria as matrizes necessarias para preencher
		inteiro N1[4][6], N2[4][6], M1[4][6], M2[4][6]
		// contadores, equivalentes a contador1, contador2, contador3
		inteiro i, j, k

		// primeiro loop para passar pelas linhas da matriz
		para (i = 0; i < 4; i++) {
			// segundo loop para passar por cada coluna da matriz
			para (j = 0; j < 6; j++) {
				N1[i][j] = Util.sorteia(-100, 100) // sorteia um numero entre -100 e 100 e o armazena na posicao i,j
				// exemplo, se i = 0 e j = 0, ele armazena esse valor em (0,0)
				N2[i][j] = Util.sorteia(-100, 100) // equivalente a N1
				M1[i][j] = N1[i][j] + N2[i][j] // soma os valores em N1[i,j] e N2[i,j]
				M2[i][j] = N1[i][j] - N2[i][j] // subtrai os valores em N1[i,j] e N2[i,j]
			}
		}

		para (k = 0; k < 2; k++) { // loop para mostrar os valores das matrizes
			escreva("\nValores da matriz M", k+1, "\n")
			para(i = 0; i < 4; i++) { // loop interno
				para (j = 0; j < 6; j++) {
					// SE QUISER, tire o comentário abaixo pra ver como as matrizes finais M1 e M2 foram preenchidas
					// Util.aguarde(1000)
					se (k == 0) { // mostrará os valores de M1
						escreva("[", M1[i][j], "] ")	
					} senao { // mostrará os valores de M2
						escreva("[", M2[i][j], "] ")
					}
				}
				escreva("\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 315; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */