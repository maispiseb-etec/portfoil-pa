// Matheus Formigoni Mation
// 28.05.2026
// O que o programa faz
// Le um número. Exibe a soma de todos os números pares
// e ímpares de zero até o número lido.
#include <iostream>

int main() {
int num = 0, i = 0, soma = 0;
std::cout <<"Digite um numero: ";
std::cin >> num;

while (i != num  ){
i++;
soma = soma + i;
}
std::cout << "a soma de todos os numeros até o numero digitado é de: "<<soma;
    return 0;
}
