#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc,char *argv[])
{
    pid_t pid;
    pid_t ch_pid;
    int status;
    pid = fork();
    
    if(pid==-1)
    {
        fprintf(stderr, "Fork failed\n");
        reutrn 1;
    }
    
    //dziecko
    if(pid == 0)//child
    {
        int re;
        ret = execl("/bin/ls"," ","-a", NULL);
        if(re==-1)
        {
            fprintf(stderr, "error\n");
            return 2;
        }
        return 0;
    }
    
    //rodzic
    if(pid > 0)
    {
        ch_pid = wait(&status);
        printf("child status %i\n",status);
    }
    return 0;
}