/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: raiz.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
*Ler um número, verificar e exibir se o número é um quadrado perfeito, ou
*seja, se a raiz quadrada dele é um número inteiro.
*/

programa
{
	
	funcao inicio()
	{

	real numero, raiz = 0
	logico quadrado_per = falso
	
	escreva("Digite o numero desejado:")
	leia(numero)

	enquanto (raiz * raiz <= numero)
	{
	se (raiz*raiz == numero )
	{
		quadrado_per = verdadeiro
		pare
			}
		raiz = raiz + 1
	}

	se (quadrado_per)
	{
		
      escreva("O número ", numero, " é um quadrado perfeito (raiz: ", raiz, ")")	
			}
	senao
	{
		escreva("este numero nao é um quadrado perfeito")	
			}
			
	}
}
