#include <stdio.h>

int main(int argc, char *argv[])
{
 int v, i;

 for (i=0; i<10; i++)
    {
     fscanf(stdin,"%d\n",&v);
     if (v!=i+1)
       {
        fprintf(stderr,"Error %d\n",i);
        return 1;
       }
    }
 fputs("Ok!\n",stderr);
 return 0;
}
