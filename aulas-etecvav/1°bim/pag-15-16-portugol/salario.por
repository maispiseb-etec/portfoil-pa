/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: salario.por
* Data: 05/03/2026
* Autor:Sebastian/Matheus
* Descrição: 
*O vendedor recebe seu salário fixo acrescido de comissões de vendas,
*calculada a partir do percentual do valor de suas vendas. Ler o salário
*fixo do vendedor, o valor de suas vendas e o percentual sobre as vendas.
*Calcular e exibir o salário final do vendedor.
*
*/
programa
{
	
	funcao inicio()
	{
		real sf, rs_vend,  per_com, decimal, com, sc
	escreva("calcular salario\n\n")
	escreva("digite o salario fixo do funcionario: ")
	leia(sf)
	escreva("quantos reais o funcionario realizou em vendas: ")
	leia(rs_vend)
	escreva("qual é a porcentagem de comissão do funcionario: ")
	leia(per_com)
	decimal= per_com/100
	com= decimal*rs_vend
	sc=com+sf
	escreva("o salario do funcionario é de: ",sc)
	}
}
