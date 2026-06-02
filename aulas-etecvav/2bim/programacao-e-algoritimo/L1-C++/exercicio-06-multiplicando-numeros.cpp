// Matheus Formigoni Mation
// 28.05.2026
// O que o programa faz
// Le vários números até que a soma desses números seja maior que 100.
// Exibi a multiplicação dos números lidos.
#include <iostream>

int main() {

    int num = 0, total= 0, mult = 1;
    for (int i = 1; total < 100; i++)
    {
     std::cout << "Digite o "<<i<<"° numero: ";
     std::cin >> num;
     total = total + num; 
     
      mult = mult * num;
     
}
    std::cout << "A soma total dos numeros foi de: " << total << "\n";
    std::cout << "A multiplicação de todos os numeros digitados é: "<< mult<<".";
    
    return 0;
}