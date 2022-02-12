programa
{
	
	funcao inicio()
	{
		real indice
		escreva("Qual o indice de poluição? ")
		leia(indice)
		se (indice >= 0.05 e indice < 0.25) {
			escreva("Aceitável\n")
		} senao se (indice >= 0.25 e indice < 0.3) {
			escreva("Inaceitável\n") 
		} senao se (indice >= 0.3 e indice < 0.4) {
			escreva("Indústrias do 1° grupo devem suspender suas atividades")
		} senao se (indice >= 0.4 e indice < 0.5) {
			escreva("Indústrias do 2° grupo devem suspender suas atividades")
		} senao {
			escreva("Todos os grupos devem suspender suas atividades")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 144; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */