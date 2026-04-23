/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: media_alunos.por
* Data: 05/03/2026
* Autor:Matheus Formigoni Mation
* Descrição: 
*Ler 4 notas, calcular a média ponderada com os pesos 1, 2, 3 e 4
*respectivamente e exibir as notas e o resultado da média.

*/
programa
{
	
	funcao inicio()
	{
		real med=0, n1=0,n2=0,n3=0,n4=0
		escreva("digite a nota do 1° aluno.:")
		leia(n1)
		escreva("digite a nota do 2° aluno.:")
		leia(n2)
		escreva("digite a nota do 3° aluno.:")
		leia(n3)
		escreva("digite a nota do 4° aluno.:")
		leia(n4)
		med=(n1+n2+n3+n4)/4
		escreva("\nA media geral é:",med)
	}
}
