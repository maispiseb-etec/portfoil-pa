/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: abastecimento.por
* Data: 05/03/2026
* Autor:Sebastian
* Descrição: 
*O motorista de aplicativo abastece o tanque do seu carro com um
*determinado valor em reais. Ler o preço do litro de combustível e o valor
*que pretende abastecer. Calcular a quantidade de litro no abastecimento
*e exibir os dados lidos e o valor calculado
*
*/
programa
{
	
	funcao inicio()
	{
	real vl, qrs, ql
	escreva("quantidade de litros\n\n")
	escreva("digite o valor do litro:")
	leia(vl)
	escreva("escreva a quantia de dinheiro para o abastecimento:")
	leia(qrs)
	ql=qrs/vl
	escreva("você pode abastecer:",ql,"litros")
	}
}
