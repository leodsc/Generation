programa
{
	
	funcao inicio()
	{
		inteiro primeiroInicial, segundoInicial, terceiroInicial, quartoInicial
		inteiro primeiroFinal, segundoFinal, terceiroFinal, quartoFinal
		escreva("Primeiro número: ")
		leia(primeiroInicial)
		escreva("Segundo número: ")
		leia(segundoInicial)
		escreva("Terceiro número: ")
		leia(terceiroInicial)
		escreva("Quarto número: ")
		leia(quartoInicial)
		primeiroFinal = primeiroInicial*primeiroInicial
		segundoFinal = segundoInicial*segundoInicial
		terceiroFinal = terceiroInicial*terceiroInicial
		quartoFinal = quartoInicial*quartoInicial
		
		se (terceiroFinal >= 1000) {
			escreva(terceiroFinal)
		} senao {
			escreva("Primeiro: ", primeiroInicial, " e seu quadrado: ", primeiroFinal)
			escreva("\nSegundo: ", segundoInicial, " e seu quadrado: ", segundoFinal)
			escreva("\nTerceiro: ", terceiroInicial, " e seu quadrado: ", terceiroFinal)
			escreva("\nQuarto: ", quartoInicial, " e seu quadrado: ", quartoFinal)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 470; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */