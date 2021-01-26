#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>


int main(int argc, char *argv[])
{
	
	pid_t pid, pid2;
	int status;
	
	pid = fork();
	if (pid==-1)
	{
		printf("Fork failed\n");
		return 1;
	}
	if (pid==0)
	{
		FILE *wyjscie;
		wyjscie = fopen ("result.txt", "w");
		if(!wyjscie)
		{
			perror("Blad pliku wyjscia");
			return 2;
		}
		
		int i = 9;
		for (i; i<100; i+=3)
		{
			fprintf(wyjscie, "%i\n", i);
		}
		fclose(wyjscie);
		return 0;
	}
	if(pid > 0)
	{
		pid2 = wait (&status);
		printf("child status %i\n", status);
	}
	
	return 0;
}