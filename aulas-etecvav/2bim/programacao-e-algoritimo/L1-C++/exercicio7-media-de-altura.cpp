// Matheus Formigoni Mation
// 28.05.2026
// O que o programa faz
// Le a quantidade de pessoas e lee a altura dessas pessoas
// Calcula e exibi a altura média de todas as pessoas.
#include <iostream>
int main() {
int qntpess = 0, i = 1;
double alt = 0, med = 0, total = 0;

std::cout <<"Digite a quantidade de pessoas: ";
std::cin >>qntpess;

while ( i != qntpess + 1)
{
    std::cout <<"Digite a altura ( em centimetros ) da "<<i<<"° pessoa: ";
    std::cin >> alt;
    i++;

    total = total + alt;
    
    med = total / qntpess;
}
    std::cout <<"A altura média dessas pessoas é de "<<med<<"cm.";
    return 0;
}