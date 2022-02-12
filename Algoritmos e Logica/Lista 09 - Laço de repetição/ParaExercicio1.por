programa
{
	
	funcao inicio()
	{
		real filhosTotal = 0.0, salarioTotal = 0.0, salario, maiorSalario = 0.0
		inteiro filhos, i
		real pessoasComSalarioMaximo = 0.0
		const real SALARIO_MAXIMO = 100.0
		const inteiro NUMERO_TOTAL_PESSOAS = 20
	
		para (i = 0; i < NUMERO_TOTAL_PESSOAS; i++) {
			escreva("Digite o salário da ", i+1, " ° pessoa: ")
			leia(salario)
			salarioTotal += salario
			se (maiorSalario < salario) {
				maiorSalario = salario
			} se (salario < SALARIO_MAXIMO) {
				pessoasComSalarioMaximo += 1
			}
		}

		para (i = 0; i < 5; i++) {
			escreva("Digite o número de filhos da ", i+1, " ° pessoa: ")
			leia(filhos)
			filhosTotal += filhos
		}
		escreva("Média de salário é de R$ ", salarioTotal/NUMERO_TOTAL_PESSOAS)
		escreva("\nMédia de filhos é de ", filhosTotal/NUMERO_TOTAL_PESSOAS)
		escreva("\nO maior salário é de R$ ", maiorSalario)
		escreva("\nO percentual de pessoas com salário até R$ 100,00 é de ")
		escreva((pessoasComSalarioMaximo/NUMERO_TOTAL_PESSOAS)*100, "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 467; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */