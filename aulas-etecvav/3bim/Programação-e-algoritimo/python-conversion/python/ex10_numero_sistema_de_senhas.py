# Autor: Matheus F. Mation
# Data: Agosto/2026 
# Descrição: Calcula o fatorial de um número inteiro positivo.

senhaCorreta = 6761
tentativas = 1
limiteTentativas = 3

senha = int(input("Digite a senha: "))
while senha != senhaCorreta and tentativas < limiteTentativas:
    senha = int(input("Senha incorreta. Tente novamente: "))
    tentativas += 1
if senha == senhaCorreta:
    print ("Acesso liberado.")
else:
    print("Acesso bloqueado.")