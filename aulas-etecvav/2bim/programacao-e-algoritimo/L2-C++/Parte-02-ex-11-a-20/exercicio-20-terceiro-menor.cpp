// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 10 números em um vetor e exibe o terceiro menor valor encontrado.
#include <iostream>

int main() {
    int vetor[10];
    
    std::cout << "Digite 10 numeros:\n";
    for (int i = 0; i < 10; i++) {
        std::cout << "Elemento [" << i << "]: ";
        std::cin >> vetor[i];
    }
    
    // Ordenar o vetor de forma crescente para achar o terceiro menor facilmente (Bubble Sort)
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9 - i; j++) {
            if (vetor[j] > vetor[j + 1]) {
                int temp = vetor[j];
                vetor[j] = vetor[j + 1];
                vetor[j + 1] = temp;
            }
        }
    }
    
    // O terceiro menor valor estara na posicao de indice 2 apos a ordenacao
    std::cout << "\nO terceiro menor valor digitado eh: " << vetor[2] << "\n";
    
    return 0;
}