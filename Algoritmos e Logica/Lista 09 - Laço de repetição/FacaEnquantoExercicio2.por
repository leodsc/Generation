programa
{
	
	funcao inicio()
	{
		// duas maneiras de fazer: usando laço normal ou a soma de PAs
		inteiro valor
		escreva("Digite um número para somar de 1 até ele: ")
		leia(valor)
		usandoLaco(valor)
		progressaoAritmeticaFormula(valor)
	}

	funcao usandoLaco(inteiro valor) {
		inteiro contador = 0, soma = 0
		faca {
			soma += contador
			contador += 1
			
		} enquanto (contador <= valor)
		escreva("Usando a estrutura faca...enquanto, o valor total é de ", soma)
	}
	
	funcao progressaoAritmeticaFormula(inteiro valor) {
		escreva("\nUsando a fórmula de soma de PAs, o valor total é de ", (valor*(1+valor))/2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */