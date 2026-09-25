import json
import os
import csv
import shutil
from datetime import datetime

DATA_FILE = "lanchonete_dados.json"

products = []
orders = []


def load_data():
    global products, orders

    if not os.path.exists(DATA_FILE):
        products = []
        orders = []
        return

    with open(DATA_FILE, "r", encoding="utf-8") as file:
        data = json.load(file)
        products = data.get("products", [])
        orders = data.get("orders", [])


def save_data():
    data = {
        "products": products,
        "orders": orders
    }

    with open(DATA_FILE, "w", encoding="utf-8") as file:
        json.dump(data, file, indent=4, ensure_ascii=False)


def register_product():
    code = input("Código do produto: ")

    if find_product_by_code(code) is not None:
        print("Já existe um produto com este código.")
        return

    name = input("Nome do produto: ")
    price = float(input("Preço do produto: "))
    stock = int(input("Quantidade em estoque: "))

    product = {
        "code": code,
        "name": name,
        "price": price,
        "stock": stock
    }

    products.append(product)
    save_data()

    print("Produto cadastrado com sucesso!")


def list_products():
    if len(products) == 0:
        print("Nenhum produto cadastrado.")
        return

    print("\n--- Produtos cadastrados ---")
    for product in products:
        print(f"Código: {product['code']}")
        print(f"Nome: {product['name']}")
        print(f"Preço: R$ {product['price']:.2f}")
        print(f"Estoque: {product['stock']}")
        print("-" * 30)


def find_product_by_code(code):
    for product in products:
        if product["code"] == code:
            return product
    return None


def make_order():
    if len(products) == 0:
        print("Nenhum produto cadastrado.")
        return

    customer_name = input("Nome do cliente: ")

    list_products()

    code = input("Digite o código do produto: ")
    product = find_product_by_code(code)

    if product is None:
        print("Produto não encontrado.")
        return

    quantity = int(input("Quantidade desejada: "))

    if quantity <= 0:
        print("Quantidade inválida.")
        return

    if quantity > product["stock"]:
        print("Estoque insuficiente.")
        return

    total = quantity * product["price"]
    product["stock"] -= quantity

    order = {
        "customer_name": customer_name,
        "product_code": product["code"],
        "product_name": product["name"],
        "quantity": quantity,
        "total": total,
        "date": datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    }

    orders.append(order)
    save_data()

    print("Pedido realizado com sucesso!")
    print(f"Total: R$ {total:.2f}")


def list_orders():
    if len(orders) == 0:
        print("Nenhum pedido realizado.")
        return

    print("\n--- Pedidos realizados ---")
    for order in orders:
        print(f"Cliente: {order['customer_name']}")
        print(f"Produto: {order['product_name']}")
        print(f"Quantidade: {order['quantity']}")
        print(f"Total: R$ {order['total']:.2f}")
        print("-" * 30)


def best_selling_product():
    if len(orders) == 0:
        print("Nenhum pedido realizado ainda.")
        return

    quantity_by_product = {}

    for order in orders:
        code = order["product_code"]
        name = order["product_name"]
        key = (code, name)
        quantity_by_product[key] = quantity_by_product.get(key, 0) + order["quantity"]

    (best_code, best_name), best_quantity = max(
        quantity_by_product.items(), key=lambda item: item[1]
    )

    print("\n--- Produto mais vendido ---")
    print(f"Código: {best_code}")
    print(f"Nome: {best_name}")
    print(f"Quantidade total vendida: {best_quantity}")


def daily_total():
    if len(orders) == 0:
        print("Nenhum pedido realizado ainda.")
        return

    date_input = input("Digite a data (AAAA-MM-DD) ou deixe em branco para hoje: ").strip()

    if date_input == "":
        target_date = datetime.now().strftime("%Y-%m-%d")
    else:
        target_date = date_input

    total_day = 0.0
    order_count = 0

    for order in orders:
        order_date = order.get("date", "")[:10]
        if order_date == target_date:
            total_day += order["total"]
            order_count += 1

    print(f"\n--- Total vendido em {target_date} ---")
    print(f"Pedidos: {order_count}")
    print(f"Total: R$ {total_day:.2f}")


def export_report_csv():
    if len(orders) == 0:
        print("Nenhum pedido realizado ainda.")
        return

    filename = "relatorio_pedidos.csv"

    with open(filename, "w", newline="", encoding="utf-8") as file:
        writer = csv.writer(file)
        writer.writerow(["Cliente", "Código Produto", "Produto", "Quantidade", "Total", "Data"])

        for order in orders:
            writer.writerow([
                order["customer_name"],
                order["product_code"],
                order["product_name"],
                order["quantity"],
                f"{order['total']:.2f}",
                order.get("date", "")
            ])

    print(f"Relatório exportado com sucesso para '{filename}'!")


def backup_json():
    if not os.path.exists(DATA_FILE):
        print("Arquivo de dados ainda não existe.")
        return

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_filename = f"backup_{timestamp}_{DATA_FILE}"

    shutil.copy(DATA_FILE, backup_filename)

    print(f"Backup criado com sucesso: '{backup_filename}'")


def show_menu():
    print("\n=== Sistema para Lanchonete ===")
    print("1 - Cadastrar produto")
    print("2 - Listar produtos")
    print("3 - Fazer pedido")
    print("4 - Ver pedidos realizados")
    print("5 - Produto mais vendido")
    print("6 - Total vendido no dia")
    print("7 - Exportar relatório para CSV")
    print("8 - Criar backup do arquivo JSON")
    print("9 - Sair")


def main():
    load_data()

    while True:
        show_menu()
        option = input("Escolha uma opção: ")

        if option == "1":
            register_product()
        elif option == "2":
            list_products()
        elif option == "3":
            make_order()
        elif option == "4":
            list_orders()
        elif option == "5":
            best_selling_product()
        elif option == "6":
            daily_total()
        elif option == "7":
            export_report_csv()
        elif option == "8":
            backup_json()
        elif option == "9":
            save_data()
            print("Sistema encerrado.")
            break
        else:
            print("Opção inválida.")


main()
