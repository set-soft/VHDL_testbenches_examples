#include <stdio.h>

int main(int argc, char *argv[])
{
 int i;
 FILE *f;
 f=fopen(argv[1],"w");
 // Just print 0 to 9
 for (i=0; i<10; i++)
    {
     fprintf(f,"%d\n",i);
    }
 return 0;
}
