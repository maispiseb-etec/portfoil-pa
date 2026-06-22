// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 20 letras em um vetor, depois lê uma letra adicional e conta quantas vezes ela aparece no vetor.
#include <iostream>

int main() {
    char letras[20];
    char busca;
    int contador = 0;
    
    std::cout << "Digite 20 letras:\n";
    for (int i = 0; i < 20; i++) {
        std::cout << "Letra [" << i << "]: ";
        std::cin >> letras[i];
    }
    
    std::cout << "\nDigite uma letra para buscar no vetor: ";
    std::cin >> busca;
    
    for (int i = 0; i < 20; i++) {
        if (letras[i] == busca) {
            contador++;
        }
    }
    
    std::cout << "A letra '" << busca << "' aparece " << contador << " vezes no vetor.\n";
    
    return 0;
}