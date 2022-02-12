programa
{
	
	funcao inicio()
	{
		inteiro horas, salario, E = 0
		const inteiro PGTO_EXCESSO = 20, PGTO_NORMAL = 10

		escreva("Quantas horas você trabalhou? ")
		leia(horas)
		se (horas > 50) {
			E = (horas-50)*PGTO_EXCESSO
			salario = 500+E
		} senao {
			salario = horas*PGTO_NORMAL
		}

		escreva("O salário é de ", salario, " e o excesso é de ", E)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 356; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */