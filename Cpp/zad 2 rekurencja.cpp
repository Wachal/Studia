#include <iostream>
#include <string>
using namespace std;

int silnia (int liczba)
{
    if(liczba==1)
	return 1;
	if(liczba==0)
	return 1;
	else
	{
		return silnia (liczba-1)*liczba;
	}
}

int main()
{
	int n;
	cout<<"podaj n: ";
	cin>>n;
	cout<<silnia(n);
	
	
}
