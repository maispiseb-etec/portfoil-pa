// Matheus Formigoni Mation
// 22.05.2026
// O que o programa faz
// Le um número para a parada final e outro número que representa um múltiplo. Exibi os múltiplos do número lido de 1 até o número final lido

#include <iostream>

using namespace std;

int main() {
    int valor_final, numero_base;

    // Lendo as entradas do usuário
    cout << "Digite o numero de parada final: ";
    cin >> valor_final;

    cout << "Digite o numero base para achar os multiplos: ";
    cin >> numero_base;

    cout << "\nMultiplos de " << numero_base << " de 1 ate " << valor_final << ":" << endl;

    // Laço de repetição que vai de 1 até o valor final
    for (int i = 1; i <= valor_final; i++) {
        
        // Se o resto da divisão de 'i' pelo 'numero_base' for 0, ele é múltiplo
        if (i % numero_base == 0) {
            cout << i << " ";
        }
    }

    cout << endl; // Apenas para pular uma linha no final do programa

    return 0;
}
