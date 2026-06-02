// Matheus Formigoni Mation
// 22.05.2026
// O que o programa faz
// Lê um número inteiro, e verifica e exibir se o número é primo.
#include <iostream>

int main() {
    int num, div, i; 
    std::cout << "digite um numero: ";
    std::cin >> num;
    for( i=1; i <= num; i++){
         if (num % i == 0) { 
         div++; 
         std::cout << i << " é divisivel por "<<num<<" \n";
      }    
    }
    std::cout << num <<" é divisivel por "<< div<<" numeros \n";
    
        if ( div == 2 )
    {
        std::cout << num <<" é um numero PRIMO pois tem 2 divisores (1 e "<<num<<")";
            }
            
    return 0;
}
