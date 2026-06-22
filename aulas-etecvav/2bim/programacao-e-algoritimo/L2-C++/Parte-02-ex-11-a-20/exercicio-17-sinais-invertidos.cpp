// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 10 números em um vetor, cria outro com os sinais invertidos e exibe a soma dos valores positivos de ambos os vetores.
#include <iostream>

int main() {
    int v1[10];
    int v2[10];
    int somaPositivos = 0;
    
    std::cout << "Digite 10 numeros:\n";
    for (int i = 0; i < 10; i++) {
        std::cout << "Elemento [" << i << "]: ";
        std::cin >> v1[i];
        v2[i] = -v1[i]; // Inverte o sinal
    }
    
    // Somar os valores positivos de ambos os vetores
    for (int i = 0; i < 10; i++) {
        if (v1[i] > 0) {
            somaPositivos += v1[i];
        }
        if (v2[i] > 0) {
            somaPositivos += v2[i];
        }
    }
    
    std::cout << "\nSoma dos valores positivos de ambos os vetores: " << somaPositivos << "\n";
    
    return 0;
}