/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: desconto.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
*Ler o valor de uma compra e calcular o desconto, de acordo com o valor
*total da compra: se for menor que R$100, não há desconto; se for entre
*R$100 e R$500, o desconto é de 10%; acima de R$500, o desconto é de
*20%. Exibir o valor após aplicado o desconto.
*/

programa
{
	
	funcao inicio()
	{
		real vlrc, desc
		
		escreva ("calculador de desconto\n\n")

		
		escreva ("digite o valor da compra:")
		leia (vlrc)
se  (vlrc < 100)
	{
		
		escreva ("não há desconto nesta compra")	
				}

				
se  (vlrc>=100 e vlrc<500)
	{
		desc =  vlrc - (vlrc * 0.10)
		
		escreva ("o preço total é de ",desc)
				}

				
senao 
	{
		desc = vlrc - (vlrc * 0.20)
		escreva ("o preço total é de ",desc)
				}	

				
	}
}
