#include <iostream>
#include <cmath>
int main() {
    int pot, i, res;
    std::cout << "este codigo calcula potencias de 2^0 até 2^n \n";
    std::cout << "digite um numero desejado: ";
    std::cin >> pot;
    std::cout <<"2^0 = 1\n";
    for(i=1; i<=pot; i++){
        res = std::pow(2, i);
    std::cout <<"2^"<<i<<" = "<<res<< "\n";
    }
    return 0;
}
