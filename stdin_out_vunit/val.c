#include <stdio.h>

int main(int argc, char *argv[])
{
 int v, i;
 FILE *f;
 f=fopen(argv[1],"r");
 for (i=0; i<10; i++)
    {
     fscanf(f,"%d\n",&v);
     if (v!=i+1)
       {
        fprintf(stderr,"Error %d (got %d)\n",i,v);
        return 1;
       }
    }
 fputs("Ok!\n",stderr);
 return 0;
}
