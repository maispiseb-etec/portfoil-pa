// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 15 números em um vetor, conta e exibe a quantidade de números pares e ímpares.
#include <iostream>

int main() {
    int vetor[15];
    int pares = 0, impares = 0;
    
    std::cout << "Digite 15 numeros:\n";
    for (int i = 0; i < 15; i++) {
        std::cout << "Elemento [" << i << "]: ";
        std::cin >> vetor[i];
        if (vetor[i] % 2 == 0) {
            pares++;
        } else {
            impares++;
        }
    }
    
    std::cout << "\nQuantidade de numeros pares: " << pares << "\n";
    std::cout << "Quantidade de numeros impares: " << impares << "\n";
    
    return 0;
}