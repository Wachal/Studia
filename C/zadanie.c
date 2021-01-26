#include <stdio.h>
#include <string.h>

int main (int argc, char *argv[])
{
	if (argc == 2)
	{
		return odczyt(argc, argv);
	}else
	{
		return utworzenie();
	}
	
}

int odczyt(int argc, char *argv[])
{
	FILE *wejscie, *wyjscie;
	
	wejscie = fopen("plik.txt", "r");
	if(!wejscie)
	{
		perror("Blad odczytu");
		return 1;
	}
	
	wyjscie = fopen("wynik.txt", "w");
	if(!wyjscie)
	{
		perror ("blad pliku wyjscia");
		return 2;
	}
	
	int litera, i=0;
	while(feof(wejscie)==0)
	{
	 if(i==0)
	 {
		fputc(litera, wyjscie);
		i++;
	 }else{
		i++;
		if(i==3) i=0;
	 }
	 
    }
    
    return 0;
	
}

int utworzenie()
{
	printf("Nie została podana nazwa pliku\n");
	
	FILE *wyjscie;
	
	wyjscie = fopen("wynik.txt", "w");
	if(!wyjscie)
	{
		perror("blad pliku wyjscia");
		return 4;
	}
	
	int litera, i=0;
	while ((litera = getchar())!=10)
	{
		if(i==0)
		{
			fputc(litera, wyjscie);
			i++;
		}else
		{
			i++;
			if(i==3) i=0;
		}
	}
	
	return 0;
	
}