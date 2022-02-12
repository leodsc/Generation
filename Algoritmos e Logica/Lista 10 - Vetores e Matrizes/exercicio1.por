programa
{
	
	funcao inicio()
	{
		inteiro pontuacao[5], i, maior = 0

		para (i = 0; i < 5; i++) {
			escreva("Digite a pontuação: ")
			leia(pontuacao[i])
			se (i == 0) {
				maior = pontuacao[i]
			} senao se (maior < pontuacao[i]) {
				maior = pontuacao[i]
			}
		}
		para (i = 0; i < 5; i++) {
			escreva("O valor da posição ", i, " é igual a ", pontuacao[i], "\n")
		}
		escreva("O maior valor é de ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */