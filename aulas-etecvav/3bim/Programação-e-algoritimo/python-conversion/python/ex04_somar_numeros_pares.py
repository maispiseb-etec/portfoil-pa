numero = 0
contador = 1
soma = 0

print("Digite um numero inteiro positivo")
numero = int(input(numero))
if numero > 0:
    while contador <= numero:
        if contador % 2 == 0:
                soma = soma + contador
        contador =+ 1
    print(f"Soma dos pares: {soma}")
else:
    print("Numero invalido.")
