#include <iostream>

int main() {
    int num; 
    int div;
    int i = 1;
    std::cout << "digite um numero: ";
    std::cin >> num;
    for( i; i <= num; i++) {
      std::cout << i << "\n";
      if (num % i == 0) { 
          div++; 
          std::cout << i << "e divisivel\n";
      }  
    }
    std::cout << div;
    return 0;
}