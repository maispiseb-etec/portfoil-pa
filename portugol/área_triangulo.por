/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: área_triangulo.por
* Data: 05/03/2026
* Autor:Matheus Formigoni Mation
* Descrição: 
*Ler a base e altura de um triângulo retangulo. Calcular e exibir a área do triângulo
*sabendo que área = base * altura / 2.
*/
programa
{
	
	funcao inicio()
	{
	real bs, alt, area
 	escreva("Calculo para área de um triangulo\n")
 	escreva("Digite a medida da base em metros.........:")
 	leia(bs)
 	escreva("Digite a medida da altura em metros.......:")
 	leia(alt)
 	area=(bs*alt)/2
 	escreva("A área do seu triângulo retangulo é :",area," metros²")
	}
}
