/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: ano-bissexto.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
*Ler um ano e verificar se o ano é bissexto. Um ano é bissexto se for
*divisível por 4, mas não por 100, exceto se for divisível por 400. Exibir o
*ano lido, informando se é ou não é bissexto.
*/
programa
{
	
	funcao inicio()
	{
	inteiro ano
	escreva("Este ano é bissexto\n\n")
	escreva("digite o ano desejado:")
	leia(ano)
	
	se (((ano % 4 == 0) e (ano % 100 != 0 )) ou (ano%400==0))
{
	escreva("o ano de ",ano," é bissexto")	
		}
	senao
{
	escreva("o ano de ",ano," não é bissexto")
		}
	
	}
}
