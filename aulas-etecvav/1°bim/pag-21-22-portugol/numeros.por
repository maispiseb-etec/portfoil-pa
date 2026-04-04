/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: numeros.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
* Ler três números inteiros e exibir o maior desses três números.
*/

programa
{
	
	funcao inicio()
	{
	inteiro n1, n2, n3
	
	escreva("qual é o maior numero\n\n")

	escreva("digite primeiro valor:")
	leia(n1)
	escreva("digite segundo valor:")
	leia(n2)
	escreva("digite terceiro valor:")
	leia(n3)

	se (n1 > n2 e n1 > n3)
	{
		escreva("o maior numero é ",n1)

			}
	se (n2 > n1 e n2 > n3)
	{
		escreva("o maior numero é ",n2)

			}
	se (n3 > n2 e n3 > n1)
	{
		escreva("o maior numero é ",n3)

			}
	
	}
}
