// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 10 números em um vetor, substitui os números negativos por zero e exibe o vetor resultante.
#include <iostream>

int main() {
    int vetor[10];
    
    std::cout << "Digite 10 numeros:\n";
    for (int i = 0; i < 10; i++) {
        std::cout << "Elemento [" << i << "]: ";
        std::cin >> vetor[i];
        if (vetor[i] < 0) {
            vetor[i] = 0;
        }
    }
    
    std::cout << "\nVetor resultante (negativos substituidos por zero):\n";
    for (int i = 0; i < 10; i++) {
        std::cout << vetor[i] << " ";
    }
    std::cout << "\n";
    
    return 0;
}