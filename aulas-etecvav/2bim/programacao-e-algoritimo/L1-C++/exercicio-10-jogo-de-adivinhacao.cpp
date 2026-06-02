// Matheus F.Mation e Sebastian A. S. Diaz
// 01.06.2026
// O que o programa faz
// Gera um numero aleatorio de 1 ate 100, simula um jogo de adivinhação,
// exibe se o mumero digitado esta correto abaixo ou acima do valor aleatorio
#include <iostream>
#include <random> 
using namespace std;
int main() {
    int num = 0, i = 1;
std::random_device rd;
std::mt19937 gerador(rd());
std::uniform_int_distribution<> intervalo(1, 100);
    
int rng = intervalo(gerador);
    
    while (num != rng){
        cout<<"Digite sua "<<i<<"° tentativa: ";
        cin>>num;
        i++;
    if (num < rng){
        cout << "Esse numero esta abaixo do correto\n\n";
    }
    if (num > rng){
        cout << "Esse numero esta aciama do correto\n\n";
    }
    if (num == rng){
        cout << "Esse numero esta correto parabens!!!\n\n";
        cout <<"foram necessárias "<<i - 1<<" tentativas";
    }
    
    }
    


    return 0;
}