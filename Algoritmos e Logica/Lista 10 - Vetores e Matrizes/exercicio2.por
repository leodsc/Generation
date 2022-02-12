programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		inteiro i, lancamentos[10], quantidadeMaior = 0, maior = 0
		real soma = 0.0

		para (i = 0; i < 10; i++) {
			lancamentos[i] = Util.sorteia(1, 6)
			soma += lancamentos[i]
			se (maior < lancamentos[i]) {
				maior = lancamentos[i]
				quantidadeMaior = 1
			} senao se (maior == lancamentos[i]) {
				quantidadeMaior += 1
			}
			escreva("O valor do ", i+1, "° lançamento é ", lancamentos[i],"\n")
		}
		escreva("O maior número que apareceu foi ", maior, " com um total de ", quantidadeMaior , " aparecimento(s)")
		escreva("\nA média dos lançamentos é de ", soma/10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */