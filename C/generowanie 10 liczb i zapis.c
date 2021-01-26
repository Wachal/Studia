#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>
#include<string.h>


int main (int argc, char *argv[])
{
	
	int i;
	int a;
	char buffer[2];
	short b;
	
	srand(time(0));
	int random();
	
	//utworzenie nowego pliku
	a = open("plik.txt", O_CREAT | O_WRONLY | O_TRUNC);
	if (a==-1)
	{
		return 1;
	}
	
	
	for(i=0; i<10; i++)
	{
		
		b = random();
		snprintf(buffer,3, "%d", b); //przekierowanie printf do bufora
		printf("%s\n", buffer);
		write (a, &buffer, 3); //zapis bajtów do pliku
		
	}
	
	close (a);
	return 0;
}

//losowanie liczby
int random()
{
	int liczba;
	
	liczba = rand();
	return liczba;
}