programa
{
	
	funcao inicio()
	{
		inteiro valor = 233
		escreva("Os valores da sequência são\n")
		faca {
			escreva(valor, " ")
			se (valor > 300 e valor < 400) {
				valor += 3
			} senao {
				valor += 5
			}
			se (valor == 303 ou valor == 354 ou valor == 399) {
				escreva("\n")
			}
		} enquanto (valor < 456)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */