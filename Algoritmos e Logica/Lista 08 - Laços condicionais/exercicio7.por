programa
{
	
	funcao inicio()
	{
		real base, altura
		escreva("Digite a base do triangulo ")
		leia(base)
		escreva("Digite a altura do triangulo ")
		leia(altura)
		se (base > 0 e altura > 0) {
			real area = (base*altura)/2
			escreva("A área do triângulo é: ", area)
		} senao {
			escreva("Algum dos valores é negativo")
		}
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