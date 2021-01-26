#include <iostream>

using namespace std;

void wybor1(int *tablica);
void wybor2(int *tablica, int elementy);
void wybor3(int *tablica, int elementy);
void wybor4(int *tablica, int elementy);
void wybor5(int *tablica);

int main()
{
    int elementy; 
	int wybor;
    int tablica[elementy];
    
    cout << "Podaj ilosc elementow tablicy: ";
    cin>>elementy;

    for(int i=0; i<elementy; i++){
        cout<<"Wpisz element do tablicy: ";
        cin>>tablica[i];
    }

    do{
        cout<<"Wybierz co zrobic:\n1 - wartosc pierwszego elementu tablicy\n2 - zawartosc tablicy"
            <<"\n3 - roznice miedzy ostatnim element a pierwszym\n4 - sume wszystkich elementow tablicy\n5 - dowolnie wybrany element \nWybor: ";
        cin>>wybor;
    }while(!(wybor>0 && wybor<6));

    switch(wybor){

    case 1:
        wybor1(tablica);
        break;
    case 2:
        wybor2(tablica, elementy);
        break;
    case 3:
        wybor3(tablica, elementy);
        break;
    case 4:
        wybor4(tablica, elementy);
        break;
    case 5:
        wybor5(tablica);
        break;
    default:
        break;
    }

    return 0;
}

void wybor1(int *tablica)
{
    cout<<tablica[0];
}


void wybor2(int *tablica, int elementy)
{

    for(int i=0; i<elementy; i++)
	{
        cout<<tablica[i]<<endl;
    }
}


void wybor3(int *tablica, int elementy)
{

    int wynik=0;

    wynik = tablica[--elementy]-tablica[0];
    cout<<wynik<<endl;
}


void wybor4(int *tablica, int elementy)
{

    int wynik = 0;

    for(int i=0; i<elementy; i++)
        wynik+=tablica[i];
		cout<<wynik<<endl;
}


void wybor5(int *tablica)
{

    int elem;

    cout<<"Podaj ktory element chcesz wyswietlic: ";
    cin>>elem;
    cout<<tablica[--elem];
}



