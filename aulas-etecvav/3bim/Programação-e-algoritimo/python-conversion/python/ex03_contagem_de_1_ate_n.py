
# Sebastian A. S. Diaz

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
