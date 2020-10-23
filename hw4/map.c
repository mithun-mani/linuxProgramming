#include <stdio.h>
#include <string.h>
int main(int argc, char **argv){
    printf("\n\n\n");
    int i = 0;
    printf("argc |\t%d\t\t\t| %p\nargv |\t%p\t\t| %p\n\n", argc, &argc, &argv[0],&argv);
    for (int j = 0; j < argc; j++) {
                printf("\n\t\t+_________________+  argv+%d\n%p  |  %p  |", i++, &argv[j], argv[j]);
    }
    printf("\n\n\n");
    int count = 4;
    for (int j = 0; j < argc; j++) {
        for (int k = 0; k < strlen(argv[j]); k++){
            if (count == 4) {
                printf("   |\n\t\t________________+_______________+_______________+_______________\n%p ", &argv[j][k]);
                count = 0;
            }
            printf("\t|\t%x(%c)", argv[j][k], argv[j][k]);
            count++;
        }
    }
    printf("\n\n\n");
    return 0;
}