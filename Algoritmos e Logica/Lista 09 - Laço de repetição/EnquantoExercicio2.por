programa
{
	
	funcao inicio()
	{
		inteiro valor

		escreva("Digite o valor que deseja que seja multiplicado: ")
		leia(valor)
		se (valor > 1) {
			escreva(valor)
			enquanto (valor <= 100) {
				valor *= 3
				escreva(" ", valor)
			}
		} senao {
			escreva("Número digitado gera apenas valores menores que 100, tente novamente")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */