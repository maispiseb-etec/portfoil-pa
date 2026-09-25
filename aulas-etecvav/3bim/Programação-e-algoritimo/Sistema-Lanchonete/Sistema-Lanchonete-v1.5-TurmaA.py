import json
from datetime import datetime
from pathlib import Path

ARQUIVO = Path("dados.json")


def carregar_dados():
    if ARQUIVO.exists():
        with open(ARQUIVO, "r", encoding="utf-8") as arquivo:
            return json.load(arquivo)

    return {
        "produtos": [],
        "pedidos": []
    }


def salvar_dados(dados):
    with open(ARQUIVO, "w", encoding="utf-8") as arquivo:
        json.dump(dados, arquivo, ensure_ascii=False, indent=4)


def proximo_id(lista):
    return max(
        (item["id"] for item in lista),
        default=0
    ) + 1


def cadastrar_produto(dados):
    print("\n--- CADASTRAR PRODUTO ---")

    nome = input("Nome do produto: ").strip()

    try:
        preco = float(
            input("Preço: R$ ").replace(",", ".")
        )

        estoque = int(
            input("Quantidade em estoque: ")
        )

        if preco < 0 or estoque < 0:
            raise ValueError

    except ValueError:
        print("Preço ou estoque inválido.")
        return

    produto = {
        "id": proximo_id(dados["produtos"]),
        "nome": nome,
        "preco": preco,
        "estoque": estoque
    }

    dados["produtos"].append(produto)

    salvar_dados(dados)

    print("Produto cadastrado com sucesso!")


def listar_produtos(dados):
    print("\n--- PRODUTOS ---")

    if not dados["produtos"]:
        print("Nenhum produto cadastrado.")
        return

    for produto in dados["produtos"]:
        print(
            f'ID: {produto["id"]} | '
            f'{produto["nome"]} | '
            f'R$ {produto["preco"]:.2f} | '
            f'Estoque: {produto["estoque"]}'
        )


def registrar_pedido(dados):
    print("\n--- REGISTRAR PEDIDO ---")

    if not dados["produtos"]:
        print("Cadastre produtos antes de registrar um pedido.")
        return

    listar_produtos(dados)

    try:
        produto_id = int(
            input("ID do produto: ")
        )

        quantidade = int(
            input("Quantidade: ")
        )

        if quantidade <= 0:
            raise ValueError

    except ValueError:
        print("Dados inválidos.")
        return

    produto = next(
        (
            p for p in dados["produtos"]
            if p["id"] == produto_id
        ),
        None
    )

    if produto is None:
        print("Produto não encontrado.")
        return

    if quantidade > produto["estoque"]:
        print("Estoque insuficiente.")
        return

    total = produto["preco"] * quantidade

    pedido = {
        "id": proximo_id(dados["pedidos"]),
        "produto": produto["nome"],
        "quantidade": quantidade,
        "total": total,
        "data": datetime.now().strftime(
            "%d/%m/%Y %H:%M"
        )
    }

    produto["estoque"] -= quantidade

    dados["pedidos"].append(pedido)

    salvar_dados(dados)

    print(
        f"Pedido registrado! "
        f"Total: R$ {total:.2f}"
    )


def listar_pedidos(dados):
    print("\n--- PEDIDOS ---")

    if not dados["pedidos"]:
        print("Nenhum pedido registrado.")
        return

    for pedido in dados["pedidos"]:
        print(
            f'ID: {pedido["id"]} | '
            f'{pedido["produto"]} | '
            f'Quantidade: {pedido["quantidade"]} | '
            f'Total: R$ {pedido["total"]:.2f} | '
            f'{pedido["data"]}'
        )


def menu():
    dados = carregar_dados()

    while True:
        print("""
========== LANCHONETE ==========

1 - Cadastrar produto
2 - Listar produtos
3 - Registrar pedido
4 - Listar pedidos
5 - Sair

=================================
""")

        opcao = input("Escolha uma opção: ").strip()

        if opcao == "1":
            cadastrar_produto(dados)

        elif opcao == "2":
            listar_produtos(dados)

        elif opcao == "3":
            registrar_pedido(dados)

        elif opcao == "4":
            listar_pedidos(dados)

        elif opcao == "5":
            print("Sistema encerrado.")
            break

        else:
            print("Opção inválida.")


if __name__ == "__main__":
    menu()
