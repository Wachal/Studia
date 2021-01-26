#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <dirent.h>

int main( int argc, char *argv[] )
{
        if(argc != 2)
		{
                printf( "Nie podano nazwy dla pliku");
                return 0;
        }

        int status;
        pid_t pid;
        pid_t ch_pid;
        pid = fork();
        
        
		if(pid == -1)
		{
                printf( "Fork blad - nie udalo sie stworzyc nowego procesu" );
                return 1;
        }
        
        
        if(pid == 0)//dziecko
		{
			char plik_nazwa[150];
			sprintf( plik_nazwa, "%s", argv[1]); // przekazanie nazwy pliku z argv do plik

			char nazwa_katalog[] = "./zaliczenie"; 
			mkdir(nazwa_katalog, 0744); 


			// przenoszenie i laczenie stringow, sciezka do pliku
			char output_plik[150];
			strcpy( output_plik, nazwa_katalog );
			strcat( output_plik, "/" );
			strcat( output_plik, plik_nazwa );
			
            //tworzy nowy plik 
			FILE *plik = fopen( ( output_plik ), "w" ) ; 
            if(!plik)
			{ 
					perror( "blad tworzenia pliku" ); 
					return 2;
			}
			
            //czytanie danych z /etc
			struct dirent *dir_w; 

            //otwiera folder o podanej nazwie
			char dirnazwa[] = "/etc"; 
			
			DIR *dir_d = opendir(dirnazwa); 
            if( dir_d == NULL )
			{ 
					printf( "Blad otwierania folderu ");  
					return 2;  
			}


            // dopoki nie zakonczylo pobierania danych
			while( ( dir_w = readdir( dir_d ) ) != NULL )
			{ 
					if( dir_w -> d_type == DT_REG ){ // sprawdza czy są wyciąganie pliki regularne
							fputs( dir_w -> d_name, plik );
							fputs( "\n", plik );
					}
			}
            closedir(dir_d);
        }
        
        if( pid > 0 )//rodzic
		{ 
                ch_pid = wait( &status ); // czekanie na dziecko
                printf("Status procesu potomnego %i\n", status);
				
				printf("Proces rodzica id: %ld\n", getppid() );
                printf("Proces dziecka id: %ld\n", getpid() );
                printf("Program sie zakonczyl\n");

        }
}