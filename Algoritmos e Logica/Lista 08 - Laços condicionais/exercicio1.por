programa
{
	
	funcao inicio()
	{
		real P = 0, E, M

		escreva("Peso de tomates (em KG)")
		leia(P)
		E = P-50.0
		
		se (E > 0) {
			M = E*4
			escreva("O valor da multa é: ", M)
		} senao {
			escreva("Não haverá multa a ser aplicada, excesso: 0, multa: 0")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 268; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */