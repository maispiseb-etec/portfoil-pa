/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: dinheiro_do_coixa.por
* Data: 05/03/2026
* Autor:Kelvin/ Matheus
* Descrição: 
*O caixa do supermercado recebe uma certa quantidade de moedas por 
*dia. Ler a quantidade de moedas recebidas de acordo com cada um dos 
*valores 1, 5, 10, 25 e 50 centavos, e ainda moedas de 1 real. Calcular 
*e exibir o valor recebido de cada um dos tipos de moeda e a soma total
*em moedas.
*/
inteiro  m1, m5, m10, m25, m50, m1real
 real dt 
 	escreva("calculo de dinheiro recebido em moedas\n\n")
 	escreva("porfavor digite a:\n")
   	escreva("quantidade de moedas de 1 centavo recebidas: ")
   	leia(m1)
	escreva("quantidade de moedas de 5 centavos recebidas: ")
   	leia(m5)
   	escreva("quantidade de moedas de 10 centavos recebidas: ")
   	leia(m10)
   	escreva("quantidade de moedas de 25 centavos recebidas: ")
   	leia(m25)
   	escreva("quantidade de moedas de 50 centavos recebidas: ")
   	leia(m50)
   	escreva("quantidade de moedas de 1 REAL recebidas: ")
   	leia(m1real)
   	dt=(m1*0.01)+(m5*0.05)+(m10*0.10)+(m25*0.25)+(m50*0.50)+(m1real*1)

   	escreva("o caixa recebeu ao todo: ",dt," reais")
