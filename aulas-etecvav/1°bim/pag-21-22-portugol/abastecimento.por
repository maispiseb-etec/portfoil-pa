/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
* Arquivo: abastecimento.por
* Data: 05/03/2026
* Autor: Matheus
* Descrição: 
* Ler o preço do etanol e da gasolina. Sugerir o tipo de combustível a ser
*utilizado em um carro, com base no preço: se o preço do etanol for até
*70% do preço da gasolina, é recomendado usar álcool; caso contrário,
*usar gasolina. Exibir o resultado sugerido.
*/

programa
{
	funcao inicio()
	{
	
	real p_eta, p_gas

	escreva("melhor combustível a ser utilizado \n\n")
	escreva("Digite o preço da gasolina: ")
	leia(p_gas)
	escreva("Digite o preço da etanol: ")
	leia(p_eta)
	
	se (p_eta <= p_gas*0.7) {
		
		escreva("o melhor combustivel para abastecer é etanal")
				}
	senao
	{		
		escreva("o melhor combustivel para abastecer é gasolina")
				}
	}
}
