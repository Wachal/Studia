#include <iostream>

using namespace std;

void wybor2(int *tablica, int szukana);
void wybor1(int *tablica, int szukana);

int main()
{
    int szukana;
	int  wybor;
    int tablica[15] = {1,23,43,23,65,41,24,24,54,76,34,32,12,12,32};

    cout<<"Podaj wartosc do wyszukania: ";
    cin>>szukana;

    do{
        cout<<"Wybierz sposob szukania\n 1 - szukaj klucza,\n 2 - szukaj wszystkich pasujacych:\nWybor: ";
        cin>>wybor;
    }while(!(wybor>0 && wybor<3));

    switch(wybor)
    {
    case 1:
        wybor1(tablica, szukana);
        break;
    case 2:
        wybor2(tablica, szukana);
        break;
    }

    return 0;
}

void wybor2(int *tablica, int szukana)
{

    int Tablicaznal[15][2];
    int j=0;
    bool znaleziono = false;

    for(int i=0; i<15; i++)
	{
        if(tablica[i]==szukana)
		{
            Tablicaznal[j][0] = szukana;
            Tablicaznal[j][1] = i;
            j=j+1;
            znaleziono=true;
        }
    }

    if(!znaleziono)
	{
        cout<<"Nie znaleziono"<<endl;
    }
    else
	{
        for(int i=0; i<j; i++)
		{
            if(Tablicaznal[i] != '\0')
                cout<<"Znaleziono: "<<Tablicaznal[i][0]<<" indeks: "<<Tablicaznal[i][1]<<endl;

        }
    }
}

void wybor1(int *tablica, int szukana)
{

    bool znaleziono = false;

    for(int i=0; i<15; i++)
	{
        if(tablica[i]==szukana)
		{
            cout<<"Znaleziono!\nWartosc: "<<tablica[i]<<"\nKlucz: "<<i<<endl;
            znaleziono = true;
            break;
        }
    }
    if(!znaleziono)
        cout<<"Nie znaleziono"<<endl;
}


