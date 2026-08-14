# Autor: Sebastian A. S. Diaz
# Data: Agosto/2026 
# Descrição: Lê um número inteiro positivo e exibe a contagem de 1 até esse número.

numero = 0
contador = 1

print("Digite um numero de 1 a 10")
numero = int(input("numero: "))
while numero < 1 or numero > 10:
    print("Numero invalido tente outro")
    numero = int(input("numero: "))
while contador <= 10:
    print(f"{numero} x {contador} = {numero * contador}")
    contador += 1
