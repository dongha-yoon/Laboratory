#include <stdio.h>

int main(int argc, char** argv){

    void* p = NULL;
    printf("%p, %p, %p",argv, argv[1], (void*)&p);
}

