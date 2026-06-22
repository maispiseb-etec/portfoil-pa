// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 15 números em um vetor e exibe o índice do menor e do maior valor encontrado.
#include <iostream>

int main() {
    int vetor[15];
    int indMenor = 0, indMaior = 0;
    
    std::cout << "Digite 15 numeros:\n";
    for (int i = 0; i < 15; i++) {
        std::cout << "Elemento [" << i << "]: ";
        std::cin >> vetor[i];
    }
    
    for (int i = 1; i < 15; i++) {
        if (vetor[i] < vetor[indMenor]) {
            indMenor = i;
        }
        if (vetor[i] > vetor[indMaior]) {
            indMaior = i;
        }
    }
    
    std::cout << "\nIndice do MENOR valor (" << vetor[indMenor] << "): " << indMenor << "\n";
    std::cout << "Indice do MAIOR valor (" << vetor[indMaior] << "): " << indMaior << "\n";
    
    return 0;
}