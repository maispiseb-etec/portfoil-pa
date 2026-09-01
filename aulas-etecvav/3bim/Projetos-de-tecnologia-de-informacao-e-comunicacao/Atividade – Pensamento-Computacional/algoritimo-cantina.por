programa
{

	
	funcao inicio()
	{
		inteiro opcao = 0
		enquanto (opcao != 2){
		real i, valor, total = 0, desc, desctotal, opcaodesc = 0, opcaodesctotal = 0
		inteiro ii = 1

		escreva("\nAtendimento iniciado!\n\n")
		
		escreva("Digite a quantudade de produtos a serem comprados: ")
		leia (i)
		
		enquanto (ii <= i){
			escreva("\nDigite o valor do ", ii, "° item: ")
			leia(valor)
			escreva("Deseja aplicar desconto neste item? Digite '1' para SIM ou '2' para NÃO: ")
			leia(opcaodesc)

			enquanto (opcaodesc != 1 e opcaodesc != 2){			
    				escreva("Opção inválida! Tente novamente...\n\n")
    				escreva("Deseja aplicar desconto neste item? Digite '1' para SIM ou '2' para NÃO: ")
    				leia(opcaodesc)
			}
			
			se (opcaodesc == 1){			
				escreva("Digite o valor em porcentagem (%) do desconto: ")
				leia(desc)
				valor = valor - ((valor / 100) * desc)
			}
			
			total = total + valor
			ii++
		}
		
		escreva ("\nO total a ser cobrado é de R$",total,"\n\n")

		enquanto (opcaodesctotal != 1 e opcaodesctotal != 2){
		
    			escreva("Deseja aplicar desconto ao total da compra? Digite '1' para SIM e '2' para NÃO: ")
    			leia(opcaodesctotal)

    			se (opcaodesctotal == 1){
    				escreva("\nDigite o valor do desconto em porcentagem (%): ")
    				leia(desctotal)
    				total = total - ((total / 100) * desctotal)
    				escreva("\nO total a ser cobrado é de R$",total,"\n\n")
    				escreva("Deseja iniciar um novo atendimento? '1' para SIM '2' para NÃO: ")
				leia(opcao)
    		}
			se (opcaodesctotal == 2){
				escreva("O total a ser cobrado é de R$",total,"\n\n")
				escreva("Deseja iniciar um novo atendimento? '1' para SIM '2' para NÃO: ")
				leia(opcao)
			}
    			se (opcaodesctotal != 1 e opcaodesctotal != 2){
        			escreva("Opção inválida! Tente novamente.\n\n")
    			}
    		}
		}
	}
}
