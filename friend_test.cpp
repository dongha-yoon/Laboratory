#include <iostream>
using namespace std;

class Sample{
    int x;
    Sample(int x){this -> x = x;}
    friend bool isZero(Sample &a){
        if(a.x==0) return true;
        else return false;
    }
};

int main(){
    Sample a(5), b(6);
    bool ret = a.isZero(b);
}