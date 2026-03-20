/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: calcular_trapézio.por
* Data: 05/03/2026
* Autor:Matheus Formigoni Mation
* Descrição: 
* Ler a base menor, a base maior e a altura. Calcular e mostrar a área de
* um trapézio: (base menor + base maior) + altura / 2
*/
programa
{
	
	funcao inicio()
	{
	real b_men, b_mai, alt, area
 	escreva("Calculo para área de um trapézio\n")
 	escreva("Digite a medida da base MENOR em metros..:")
 	leia(b_men)
 	escreva("Digite a medida da base MAIOR em metros..:")
 	leia(b_mai)
 	escreva("Digite a ALTURA em metros................:")
 	leia(alt)
 	area=((b_men + b_mai)*alt)/2
 	escreva("A área do seu trapézio é :",area," metros²")
	}
}
