// Matheus Formigoni Mation
// 22.06.2026
// O que o programa faz
// Lê 10 números, separa os pares e ímpares em vetores distintos, ordena-os, gera um terceiro vetor com a soma dos elementos correspondentes e exibe todos.
#include <iostream>

int main() {
    int totalNum = 10;
    int num, cPar = 0, cImpar = 0;
    int vPares[10], vImpares[10], vSoma[10];
    
    std::cout << "Digite 10 numeros:\n";
    for (int i = 0; i < totalNum; i++) {
        std::cin >> num;
        if (num % 2 == 0) {
            vPares[cPar] = num;
            cPar++;
        } else {
            vImpares[cImpar] = num;
            cImpar++;
        }
    }
    
    // Ordenar vetor de Pares (Bubble Sort)
    for (int i = 0; i < cPar - 1; i++) {
        for (int j = 0; j < cPar - 1 - i; j++) {
            if (vPares[j] > vPares[j+1]) {
                int t = vPares[j]; vPares[j] = vPares[j+1]; vPares[j+1] = t;
            }
        }
    }
    
    // Ordenar vetor de Ímpares (Bubble Sort)
    for (int i = 0; i < cImpar - 1; i++) {
        for (int j = 0; j < cImpar - 1 - i; j++) {
            if (vImpares[j] > vImpares[j+1]) {
                int t = vImpares[j]; vImpares[j] = vImpares[j+1]; vImpares[j+1] = t;
            }
        }
    }
    
    // Como o enunciado pede para somar os elementos e armazenar em um terceiro vetor, 
    // faremos a soma elemento a elemento ate onde ambos existirem. 
    // Se os tamanhos forem diferentes, preservamos o valor restante.
    int maiorTamanho = (cPar > cImpar) ? cPar : cImpar;
    for (int i = 0; i < maiorTamanho; i++) {
        int p = (i < cPar) ? vPares[i] : 0;
        int imp = (i < cImpar) ? vImpares[i] : 0;
        vSoma[i] = p + imp;
    }
    
    std::cout << "\nVetor de Pares Ordenado: ";
    for(int i=0; i<cPar; i++) std::cout << vPares[i] << " ";
    
    std::cout << "\nVetor de Impares Ordenado: ";
    for(int i=0; i<cImpar; i++) std::cout << vImpares[i] << " ";
    
    std::cout << "\nVetor Soma resultante: ";
    for(int i=0; i<maiorTamanho; i++) std::cout << vSoma[i] << " ";
    std::cout << "\n";
    
    return 0;
}