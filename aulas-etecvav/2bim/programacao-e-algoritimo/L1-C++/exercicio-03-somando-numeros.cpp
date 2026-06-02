// Matheus Formigoni Mation
// 22.05.2026
// O que o programa faz
// Le vários números até que seja digitado um número negativo. Calcula e exibi a soma
// desses numeros

#include <iostream>

int main() {

    int num = 0, total= 0;
    for (int i = 1; num >= 0; i++)
    {
     std::cout << "DIgite o "<<i<<"° numero: ";
     std::cin >> num;
     if (num >= 0) {
      total = total + num; 
     }
}
    std::cout << "A soma de todos os numeros digitados é: "<< total<<".";
    
    return 0;
}