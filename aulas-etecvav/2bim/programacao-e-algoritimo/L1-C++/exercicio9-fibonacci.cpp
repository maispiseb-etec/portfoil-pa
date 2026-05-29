// Matheus Formigoni Mation
// 28.05.2026
// O que o programa faz
// Ler um número entre 50 e 100. 
//Exibir a sequência de Fibonacci até esse número.
#include <iostream>
using namespace std;

int main() {
int nummax, a = 0, b = 1, soma; 
nummax = 0;

 cout <<"Digite um numero entre 50 e 100: ";
 cin >> nummax;
     while (a <= nummax) {
cout << a << " ";
soma = a + b;
a = b;
b = soma;
}
if ((nummax < 50) || (nummax >100)){
 cout <<"numero invalido";
 return 0;
}
    return 0;
}
