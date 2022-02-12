programa
{
	
	funcao inicio()
	{
		inteiro numero
		cadeia tipo = "par"
		escreva("Qual seu número? ")
		leia(numero)
		se (numero % 2 != 0) {
			tipo = "impar"
		}
		escreva("O número ", numero, " é ", tipo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */