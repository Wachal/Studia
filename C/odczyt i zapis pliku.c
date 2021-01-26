#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define Znak 3

int plik(int argc, char*argv[]);
int utworz_plik();

int main(int argc, char *argv[])
{

   if(argc==2)
   {
   	 return plik(argc, argv);
   }
   else
   {
   	 return utworz_plik();
   }
}
	
 int plik(int argc, char *argv[])
 {
 	int wejscie, wyjscie;
 	ssize_t wejscie_r, wyjscie_r;
 	
 	wejscie = open(argv[1], O_RDONLY);
 	if(wejscie == -1)
 	{
 		perror("Blad otwarcia pliku");
 		return 1;
	}
	
	strcat(argv[1], ".red");
	wyjscie = open(argv[1], O_CREAT | O_WRONLY | O_TRUNC);
	if(wyjscie==-1)
	{
		perror("Blad wyjscia");
		return 2;
	}
	
	char znak[Znak], litera;
	
	while((wejscie_r = read(wejscie, &znak, Znak)) != 0)
	{
		if(wejscie_r == 3)
		{
			printf("%c", znak[2]);
			litera = znak[2];
			wyjscie_r = write(wyjscie, &litera, 1);
		}
	}
	close(wejscie);
	close(wyjscie);
 	return 0;
 	
  }	
  
  int utworz_plik()
  {
  	printf("Nie wybrano pliku\n");
  	
  	int wyjscie;
  	ssize_t wyjscie_r;
  	
  	wyjscie = open("wynik.txt", O_CREAT | O_WRONLY | O_TRUNC);
  	if(wyjscie==-1)
  	{
  		perror("blad utowrzenia pliku");
  		return 3;
	}
	
	int litera,
	i = 0;
	
	while((litera = getchar())!=10)
	{
		if(i==2)
		{
			wyjscie_r = write(wyjscie, &litera, 1);
			i = 0;
		}else
		{
			i++;
		}
	}
	close(wyjscie);
	return 0;
  }