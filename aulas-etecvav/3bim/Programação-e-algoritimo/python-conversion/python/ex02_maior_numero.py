
#   Autor: Matheus F. Mation
#   Data: Agosto/2026
#   Descrição: Lê dois números inteiros e informa qual é o maior ou se são iguais.
num = 0
num2 = 0

print("Digite o primeiro numero: ")
num = int(input("num: "))

print("Digite o segundo numero: ")
num2 = int(input("num2: "))

if num > num2:
    print(f"o maior numero é {num}")
elif num2 > num:
    print(f"o maior numero é {num2}")
else:
    print(f"os dois numeros são iguais a {num}")