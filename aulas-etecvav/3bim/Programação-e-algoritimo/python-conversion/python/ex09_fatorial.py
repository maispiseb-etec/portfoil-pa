# Autor: Matheus F. Mation
# Data: Agosto/2026 
# Descrição: Calcula o fatorial de um número inteiro positivo.

contador = 1
fatorial = 1

numero = int(input("Digite um numero inteiro positivo: "))

if numero >= 0:

    while contador <= numero:
        fatorial = fatorial * contador
        contador += 1 
    
    print(f"Fatorial: {fatorial}")

else:
    print("Numero invalido.")
