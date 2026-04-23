 # Exercício 2 — Pergunta de aplicação
 ## Um programa deve receber três números e mostrar qual deles é o maior.
### Descreva um **algoritmo em linguagem natural** para resolver esse problema.
### Se possível, represente esse algoritmo em **pseudocódigo ou Portugol**.
---
## Resposta

 ```portugol
  programa 
{
	
	funcao inicio()
	{
		real num1, num2, num3
		escreva("digite qualquer numero:")
		leia (num1)
		escreva("digite qualquer outro numero:")
		leia (num2)
		escreva("digite qualquer outro numero:")
		leia (num3)
		se (num1 > num2 e num1 > num3)
		{
			escreva(" O maior valor é o :",num1)
		        }
		se (num2 > num1 e num2 > num3)
		{
			escreva(" O maior valor é o :",num2)
				}		
		se (num3 > num2 e num3 > num1)
		{
			escreva(" O maior valor é o :",num3)
				}
		se (num1 == num2 e num1 > num3)
		{
			escreva(" O maior valor é o :",num1)
				}		
		se (num3 == num2 e num3 > num1)
		{
			escreva(" O maior valor é o :",num2)
				}	
			se (num1 == num2 e num2 == num3)
		{
			escreva(" O maior valor é o :",num1)
				}
	}		
}
```
neste código você pode digitar 3 números e o programa ira analisar o maior deles