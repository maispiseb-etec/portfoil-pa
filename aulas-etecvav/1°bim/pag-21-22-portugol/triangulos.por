/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: triangolos.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
*Ler três números, verificar se formam um triângulo e, se sim, exibir se é
*um triângulo equilátero, isósceles ou escaleno.

*/
programa
{
	
	funcao inicio()
	{
	real num1,num2,num3
	escreva("Esses numeros formam um triângulo?\n\n")
	escreva("Digite o primeiro numero:")
	leia(num1)
	escreva("Digite o segundo numero:")
	leia(num2)
	escreva("Digite o terceiro numero:")
	leia(num3)
se (num1 >0 e num2 >0 e num3 >0)
{
	escreva("os numeros formam um triangulo\n\n")

se (num1 == num2 e num2 == num3)
{
	escreva("esse triangulo é equilatero")
		}

se (num1 != num2 e num2 != num3 e num1 != num3)
{
	escreva("esse triangulo é escaleno")
		}
se ((num1 == num2 e num2 != num3) ou (num3 == num1 e num1 != num2) ou (num2 == num3 e num3 != num1))
{
	escreva("esse triangulo é isósceles")	
	
		}
		}
senao
{
	escreva("os numeros não formam um triangulo")
		}
	}
}
