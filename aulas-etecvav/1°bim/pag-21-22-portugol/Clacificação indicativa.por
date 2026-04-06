/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: Clacificação indicativa.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
*Ler a classificação indicativa de um filme. Identificar e exibir a categoria
*desse filme, com base na classificação indicativa: até 10 anos (infantil),
*de 11 a 14 anos (infantojuvenil), de 15 a 17 anos (juvenil) e acima de 17
*anos (adulto).
*/

programa
{
	funcao inicio()
	{

	inteiro idade

	escreva("Clacificação indicativa\n\n")

	escreva("Digite a idade da pessoa  ")
	leia(idade)

	se (idade > 0 e idade <= 10 )
	{
		escreva("A classificação indicativa para essa idade é infantil")	
			}
	se (idade >= 11 e idade <= 14 )
	{
		escreva("A classificação indicativa para essa idade é infantojuvenil")	
			}
	se (idade >= 15 e idade <= 17 )
	{
		escreva("A classificação indicativa para essa idade é juvenil")	
			}
	se (idade > 17 e idade < 123)
	{
		escreva("A classificação indicativa para essa idade é adulto")	
			}
	se (idade <= 0 ou idade >= 123)
	{
		escreva(" idade incorreta")	
			}

	}	
}
	
