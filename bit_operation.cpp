#include <iostream>

using namespace std;

int main(){
    int x[4];
    int Tmin = 1<<31;
    int Tmax = ~Tmin;

    for(int i=0;i<4;i++)
        cin >> x[i];
    for(int i=0;i<4;i++){
        cout << hex<<"0x"<<( (~x[i]+1)^x[i] )<<" "<<"0x"<<( (~x[i]+1)&x[i] ); 

        cout << endl;
    }
    // for(int i=1;i<=32;i++){
    //     cout << "int Tmin_"<<dec<<i<< " = 0x" << hex << (1<<(i-1))<<";" << endl;
    // }
    // for(int i=32;i>0;i--){
    //     cout << "int bitVec_"<<dec<<i<<" = " << "(x&Tmin_"<<dec<<i<< ");" << "x = x>>bitVec_" << i<<";" << endl;
    // }
}

