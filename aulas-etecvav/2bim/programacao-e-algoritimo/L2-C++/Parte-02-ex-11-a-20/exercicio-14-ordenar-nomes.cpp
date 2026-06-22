// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 10 nomes em um vetor, ordena-os em ordem decrescente internamente e os exibe em ordem crescente.
#include <iostream>
#include <string>

int main() {
    std::string nomes[10];
    
    std::cout << "Digite 10 nomes:\n";
    for (int i = 0; i < 10; i++) {
        std::cout << "Nome [" << i << "]: ";
        std::cin >> nomes[i];
    }
    
    // Ordenando em ordem decrescente (Z para A) usando Bubble Sort
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9 - i; j++) {
            if (nomes[j] < nomes[j + 1]) {
                std::string temp = nomes[j];
                nomes[j] = nomes[j + 1];
                nomes[j + 1] = temp;
            }
        }
    }
    
    // Exibindo em ordem crescente (como o vetor esta em ordem decrescente, basta ler de tras para frente)
    std::cout << "\nExibindo os nomes em ordem crescente (lidos a partir do vetor decrescente):\n";
    for (int i = 9; i >= 0; i--) {
        std::cout << nomes[i] << "\n";
    }
    
    return 0;
}