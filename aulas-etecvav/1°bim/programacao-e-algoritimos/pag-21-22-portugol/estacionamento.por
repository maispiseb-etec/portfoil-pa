
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
		
	inteiro tempo, hora, valor
	
	escreva("calculo de estacionamento\n\n")
	escreva("informe o tempo de permanencia no estacionamento e minutos: ")
	leia(tempo)

	se (tempo <= 60)  
	{		
		valor = 2
		escreva("O total a ser pago são: ", valor, " reais")
	}
	se (tempo > 60 e tempo <=120 )
	{
		valor = 4
		escreva("O total a ser pago são: ",valor, " reais")	
	}
	se (tempo > 120 )
	{				
		se (tempo % 60 == 0 ){
			hora = tempo / 60	
			valor = 4 + hora - 2
			escreva("O total a ser pago são: ",valor, " reais")			
		}
		senao {
			hora = tempo / 60
			valor = 4 + hora - 1
			escreva("O total a ser pago são: ",valor, " reais")			
		}
	}
	// A função inicio a baixo seve para indicar que o programa é continuo e infinito 
		inicio()
	}	
}
}
	
