/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: letras.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
* Ler um caractere. Verificar se o caractere lido é uma vogal. Exibir o
*caractere lido com a informação se é ou não uma vogal.

*/

programa
{
	
	funcao inicio()
	{

		caracter letra

		escreva("essa letra é uma vogal ou uma conçoante\n\n")
		
		escreva("digite uma letra:")
		leia(letra)

		se (letra == 'a' ou letra == 'e' ou letra == 'i' ou letra == 'o' ou letra == 'u')  
{
		escreva("esta letra é uma vogal")
}

		senao
		{
			escreva ("esta letra é uma consoante")
				}
		
	}
}
