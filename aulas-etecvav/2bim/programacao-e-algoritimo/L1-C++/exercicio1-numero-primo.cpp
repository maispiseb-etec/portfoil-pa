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
    std::cout << num <<" é divisivel por "<< div<<" numeros";
    return 0;
}
