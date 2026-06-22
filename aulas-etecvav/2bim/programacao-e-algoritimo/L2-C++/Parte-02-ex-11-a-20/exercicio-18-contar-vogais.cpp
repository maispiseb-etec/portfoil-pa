// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 20 letras em um vetor, conta as ocorrências de cada vogal e armazena os totais em um vetor de 5 posições antes de exibir.
#include <iostream>

int main() {
    char letras[20];
    int vogais[5] = {0, 0, 0, 0, 0}; // [0]=a, [1]=e, [2]=i, [3]=o, [4]=u
    
    std::cout << "Digite 20 letras:\n";
    for (int i = 0; i < 20; i++) {
        std::cout << "Letra [" << i << "]: ";
        std::cin >> letras[i];
        
        // Converter para minusculo para facilitar a checagem
        char l = tolower(letras[i]);
        if (l == 'a') vogais[0]++;
        else if (l == 'e') vogais[1]++;
        else if (l == 'i') vogais[2]++;
        else if (l == 'o') vogais[3]++;
        else if (l == 'u') vogais[4]++;
    }
    
    std::cout << "\nQuantidade de cada vogal encontrada:\n";
    std::cout << "A: " << vogais[0] << "\n";
    std::cout << "E: " << vogais[1] << "\n";
    std::cout << "I: " << vogais[2] << "\n";
    std::cout << "O: " << vogais[3] << "\n";
    std::cout << "U: " << vogais[4] << "\n";
    
    return 0;
}