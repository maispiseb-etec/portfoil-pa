/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: abastecimento.por
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
real vl, qrs, ql, kms
caracter resp
real cm
	escreva("quantidade de litros\n\n")
	escreva("digite o valor do litro:")
	leia(vl)
	escreva("escreva a quantia de dinheiro para o abastecimento:")
	leia(qrs)
	ql=qrs/vl
	escreva("você pode abastecer: ",ql," litros\n\n")
	escreva("você desaja estimar quantos quilometros voce pode rodar com ",qrs," reais?\n")
	escreva("digite 's' para SIM e 'n' para NÃO:")
	leia(resp)
	se (resp=='s')
	{
	escreva("digite o consumo medio do seu carro/moto em km/L:")
	leia(cm)
	kms=cm*ql
	escreva("voce pode rodar aproximadamente:",kms," quilometros com ",ql," litros" )
		
	}
	senao 
	{
		escreva("\n\n vou mostrar mesmo assim (não trabalhei a toa)\n\n")
	escreva("digite o consumo medio do seu carro/moto em km/L:")
	leia(cm)
	kms=cm*ql
	escreva("voce pode rodar aproximadamente:",kms," quilometros com ",ql," litros" )
	}

}
}
