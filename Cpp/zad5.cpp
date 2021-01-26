#include <iostream>

using namespace std;

int suma(int a, int b);
int suma_kwadratow(int a, int b);
float srednia_arytmetyczna(float a, float b);

int main()
{
    int a=0;
	int b=0; 
	int wybor=0;

    do{

        cout<<"podaj liczbe: "<<endl;
        cin>>a;
        cout<<"podaj liczbe, musi byc wieksza od poprzedniej: "<<endl;
        cin>>b;

    }while(!(a>0 && b>0 && a<b));

    bool koniec = false;

    do{
        do{
        cout<<"Wybierz co zrobic: 1 - suma, 2 - suma kwadratow, 3 - srednia arytmetyczna, 4 - koniec programu\nWybor: ";
        cin>>wybor;
        
        
    }while(!(wybor>0 && wybor<5));
    
    
        switch(wybor){
            case 1:
                cout<<"Wynik to: "<<suma(a, b)<<endl;
                break;
            case 2:
                cout<<"Wynik to: "<<suma_kwadratow(a, b)<<endl;
                break;
            case 3:
                cout<<"Wynik to: "<<srednia_arytmetyczna(a, b)<<endl;
                break;
            case 4:
                koniec = true;
                break;
            }

    }while(!koniec);
    return 0;
}

int suma(int a, int b)
{
    int wynik=0;
    do
	{
        wynik = wynik + a;
        a++;
    }
	while(a<=b);
    return wynik;
}

int suma_kwadratow(int a, int b)
{
    int wynik=0;
    do
	{
        wynik+=(a*a);
        a++;
    }
	while(a<=b);
    return wynik;
}

float srednia_arytmetyczna(float a, float b)
{
    return ((a+b)/2);
}







