#include <cstdlib>
#include <iostream>
using namespace std;

int main ()
{
	int n;
	int i = 1;
	int s = 1;
	
	cout<<"Podaj n: ";
	cin>>n;
	

	while (i<=n)
	{
		s=s*i;
		i=i+1;
	}
	
	
	cout<<s;
	return 0;
	 
}
