/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: estacionamento.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
*Ler o tempo de permanência de um veículo em um estacionamento.
*Calcular e exibir o preço a ser pago, considerando o tempo de permanência
*do veículo. As primeiras 2 horas custam R$ 2,00 cada, e cada hora
*adicional custa R$1,00.
*/

programa
{
	funcao inicio()
	{
		
	inteiro tempo, hora, total, resto
	
	escreva("calculo de estacionamento\n\n")
	escreva("informe o tempo de permanencia no estacionamento e minutos")
	leia(tempo)

	se (tempo <= 60)  
	{		
		escreva("O total a ser pago são 2 reais")
				}
	se (tempo > 60 e tempo <=120 )
	{
		escreva("O total a ser pago são 4 reais")	
					}
	se (tempo >120 )
	{	
		
		hora = tempo / 60
		
		total = 4 + ( hora-2)
		
		resto = tempo % 60
		
		se (tempo % 60 != 0 ){
			escreva (hora,"\n\n")
			escreva (resto)
		
			
		}
				}
	}
}
	
