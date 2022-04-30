#include <stdio.h>
#include <unistd.h>

int main() {
    int son;
    if((son=fork())==0)
        printf("I am son\n");
    else
        printf("I am farther\n");
    return 0;
}
