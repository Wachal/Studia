#include <iostream>

using namespace std;

int main()
{
    int tab[6][6] = {{23,23,45,34,32,43},{45,23,3,2,26,6},{45,32,25,14,77,12},{33,5,12,75,82,22},{21,66,66,12,43,76},{43,23,43,12,32,4}};
    int szukana, x1, x2, y1, y2;
    int Tablica[36][3];
    int k=0;
    bool znaleziono = false;  
    
    cout<<"Podaj wartosc której szukasz: ";
    cin>>szukana;
    cout<<"Podaj wspolrzedne gornego lewego rogu x: ";
    cin>>x1;
    cout<<"Podaj wspolrzedne gornego lewego rogu y: ";
    cin>>x2;
    cout<<"Podaj wspolrzedne dolnego prawego rogu x: ";
    cin>>y1;
    cout<<"Podaj wspolrzedne dolnego prawego rogu y: ";
    cin>>y2;

    
    x1--;
    x2--;
    y1--;
    y2--;

    for(int i=x2;i<=y2;i++)
	{
        for(int j=x1; j<=x2; j++)
		{
            if(tab[i][j]==szukana)
			{
                Tablica[k][0] = szukana;
                Tablica[k][1] = i;
                Tablica[k][2] = j;
                znaleziono=true;
                k+=1;
            }
        }
    }

    if(znaleziono)
        for(int i=0; i<k; i++)
            cout<<"Wartosc: "<<Tablica[i][0]<<" indeks/wsp x "<<Tablica[i][2]<<" indeks/wsp y "<<Tablica[i][1]<<endl;
    else
        cout<<"Nie znaleziono"<<endl;

    return 0;
}
