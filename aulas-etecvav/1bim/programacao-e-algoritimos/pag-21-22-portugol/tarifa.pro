/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: tarifa.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
*Ler a idade do passageiro. Determinar o preço de uma passagem de
*acordo com a idade do passageiro: até 2 anos (gratuita), de 3 a 12 anos
*(meia tarifa) e acima de 12 anos (tarifa completa). Exibir o tipo de tarifa
*que deve ser aplicada.
*/

programa
{
	
	funcao inicio()
	{

	inteiro idade

	escreva("calcular tarifa\n\n")
	
	escreva("escreva a idade do passageiro:")
	leia(idade)

	se (idade <= 2)
	{
		escreva("nesta faixa etaria o a tarifa é gratuita")	
				}
	se (idade >= 3 e idade <= 12)
	{
		escreva("nesta faixa etaria o a tarifa é metade do preço original")	
				}	
	se (idade > 12 )
	{
		escreva("nesta faixa etaria o a tarifa é o preço completo")	
				}
	
	}
}
