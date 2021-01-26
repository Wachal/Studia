  #include <iostream>

using namespace std;

void tablica1(int *tablica, int j);
void sortowanie(int *tablica, int j);


int main()
{
    int tablica[10] = {85,6,45,75,72,4,48,41,29,76};
    int j=9;

    cout<<"aktualna tablica"<<endl;
    tablica1(tablica, j);

    sortowanie(tablica, j);
    cout<<"\n\nWynik sortowania"<<endl;
    tablica1(tablica, j);
    return 0;
}

void sortowanie(int *tablica, int j)
{

    bool zamiana;
    do{
        zamiana=false;
        for(int i=0; i<j;i++)
		{
            if(tablica[i]>tablica[i+1])
			{
                swap(tablica[i], tablica[i+1]);
                zamiana=true;
            }
        }
    }
	while(zamiana==true);

}


void tablica1(int *tablica, int j)
{
    for(int i=0; i<j; i++)
	{
        cout<<tablica[i]<<",";
    }
}







