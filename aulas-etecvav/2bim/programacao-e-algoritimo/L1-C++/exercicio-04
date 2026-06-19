// Matheus Formigoni Mation
// 22.05.2026
// O que o programa faz
// Le 10 números. Verifica e exibi o meno e maio número dessa sequência.

#include <iostream>

using namespace std;

int main() {
    int numero;
    int maior, menor;

    // Lendo o primeiro número para servir de referência inicial
    cout << "Digite o 1o numero: ";
    cin >> numero;
    
    // O primeiro número é, ao mesmo tempo, o maior e o menor até agora
    maior = numero;
    menor = numero;

    // Loop para ler os outros 9 números (do 2º ao 10º)
    for (int i = 2; i <= 10; i++) {
        cout << "Digite o " << i << "o numero: ";
        cin >> numero;

        // Se o número atual for maior que o nosso 'maior' guardado, atualiza
        if (numero > maior) {
            maior = numero;
        }

        // Se o número atual for menor que o nosso 'menor' guardado, atualiza
        if (numero < menor) {
            menor = numero;
        }
    }

    // Exibe os resultados finais
    cout << "\nMenor numero da sequencia: " << menor << endl;
    cout << "Maior numero da sequencia: " << maior << endl;

    return 0;
}
