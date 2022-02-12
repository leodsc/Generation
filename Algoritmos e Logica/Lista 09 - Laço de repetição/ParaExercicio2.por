programa
{
	
	funcao inicio()
	{
		inteiro i, soma = 0
		const inteiro NUMERO_MAXIMO = 501
		const inteiro MULTIPLO = 3

		para (i = 1; i < NUMERO_MAXIMO; i++) {
			se (i % 2 != 0 e i % MULTIPLO == 0) {
				soma += i
			}
		}
		escreva("A soma de todos os número de 1 a 500 que são ímpares e múltiplos de 3 é ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 230; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */