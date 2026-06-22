// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 20 números em um vetor e exibe o índice da primeira ocorrência de um número negativo.
#include <iostream>

int main() {
    int vetor[20];
    int indiceNegativo = -1;
    
    std::cout << "Digite 20 numeros:\n";
    for (int i = 0; i < 20; i++) {
        std::cout << "Elemento [" << i << "]: ";
        std::cin >> vetor[i];
    }
    
    for (int i = 0; i < 20; i++) {
        if (vetor[i] < 0) {
            indiceNegativo = i;
            break; // Interrompe no primeiro encontrado
        }
    }
    
    if (indiceNegativo != -1) {
        std::cout << "\nO primeiro numero negativo foi encontrado no indice: " << indiceNegativo << "\n";
    } else {
        std::cout << "\nNenhum numero negativo foi digitado no vetor.\n";
    }
    
    return 0;
}