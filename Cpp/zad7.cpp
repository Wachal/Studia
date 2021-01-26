#include <iostream>

using namespace std;

int main()
{
    int m; 
	int n; 
	int wybor;
	int tablica[m][n];

    cout<<"Podaj ilosc elementow m: ";
    cin>>m;
    cout<<"Podaj ilosc elementow n: ";
    cin>>n;
    cout<<"Wpisz elementy do tablicy"<<endl;

    for(int i=0; i<m; i++)
	{
        for(int j=0; j<n; j++)
		{
            cin>>tablica[i][j];
        }
    }

   do
	{
        cout<<"Wybierz dzialanie Wyprowadz:\n 1 - zawartosc tablicy,\n  2 - sume wszystkich elementow w tablicy,\n 3 - dowolnie wybrany przez uzytkownika element[m,n]\nWybor: ";
        cin>>wybor;
    }
	while(!(wybor>0 & wybor<4));


    switch(wybor)
	{
        case 1:
            {
                for(int i=0; i<m; i++)
				{
                    for(int j=0; j<n; j++)
					{
                        cout<<tablica[i][j]<<endl;
                    }
                }
            }

            break;
        case 2:
            {
                int suma=0;
                for(int i=0; i<m; i++)
				{
                    for(int j=0; j<n; j++)
					{
                        suma+=tablica[i][j];
                    }
                }
                cout<<suma<<endl;
            }

            break;
        case 3:
            {
                cout<<"Podaj m: ";
                cin>>m;
                cout<<"Podaj n: ";
                cin>>n;
                cout<<tablica[--m][--n];
            }
            break;
        default:
            break;
    }

    return 0;
}
