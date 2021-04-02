#include <stdio.h>

unsigned long double2bits(double d){
    union{
        double d;
        unsigned long u;
    }temp;
    temp.d;
    return temp.u;
}


int main(){
    printf("%lb\n",double2bits(3.14));
}