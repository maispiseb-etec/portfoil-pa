
#   Autor: Matheus F. Mation
#   Data: Agosto/2026
#   Descrição: Lê um numero e informa se ele é positivo, negativo ou nulo.
numero = 0
print("Digite um numero inteiro:")
numero = int(input("numero: "))

if numero > 0:
    print ("O numero é positivo")

elif numero < 0:
    print("O numero é negativo")

else:
    print("O numero é zero (nulo)")
