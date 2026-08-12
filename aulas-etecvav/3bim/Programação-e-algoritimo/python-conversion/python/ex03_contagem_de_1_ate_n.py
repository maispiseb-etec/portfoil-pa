# Autor: Sebastian A. S. Diaz
# Data: Agosto/2026 
# Descrição: Lê um número inteiro positivo e exibe a contagem de 1 até esse número.
numero = 0
contador = 1

print("Digite um numero inteiro positivo ")
numero = int(input("numero: "))

if numero > 0:
    while contador <= numero:
        print(contador)
        contador += 1 
else:
    print("Numero invalido. Digite um valor positivo.")
