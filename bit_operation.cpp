#include <iostream>

using namespace std;

int main(){
    int x=0x00000000;
    int y=0x7fffffff;
    int z=0x80043000;


    cout << "-x^x: " << ((-x^x)) <<endl;
    cout << "-y^y: " << ((-y^y)) <<endl;
    cout << "-z^z: " << ((-z^z)) <<endl;
    cout << endl;
    cout << "-x&x: " << ((-x&x)) <<endl;
    cout << "-y&y: " << ((-y&y)) <<endl;
    cout << "-z&z: " << ((-z&z)) <<endl;
    cout << endl;
    cout << "-x|x: " << ((-x|x)) <<endl;
    cout << "-y|y: " << ((-y|y)) <<endl;
    cout << "-z|z: " << ((-z|z)) <<endl;


}
