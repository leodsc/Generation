programa
{
	
	funcao inicio()
	{
		inteiro idade
		escreva("Qual a idade do nadador?\n")
		leia(idade)
		se (idade >= 5 e idade <= 7) {
			escreva("Nadador pertence à categoria infantil A")
		} senao se (idade >= 8 e idade <= 11) {
			escreva("Nadador pertence à categoria Infantil B")
		} senao se (idade >= 12 e idade <= 13) {
			escreva("Nadador pertence à categoria Juvenil A")
		} senao se (idade >= 14 e idade <= 17) {
			escreva("Nadador pertence à categoria Juvenil B")
		} senao se (idade >= 18) {
			escreva("Nadador pertence à categoria Adultos")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 409; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */