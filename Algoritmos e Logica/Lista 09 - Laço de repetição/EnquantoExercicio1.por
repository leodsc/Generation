programa
{
	
	funcao inicio()
	{
		real soma = 0, valor
		escreva("Digite o valor que deve ser somado: ")
		leia(valor)
		
		enquanto (valor > 0) {
			limpa()
			soma += valor
			escreva("Digite novamente o valor que deve ser somado: ")
			leia(valor)
		}
		escreva("A soma dos valores é ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 127; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */