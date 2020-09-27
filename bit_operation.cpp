#include <iostream>
#include <bitset>

using namespace std;

int main(){
    int x=0x80000000;
    int n=2;
    
    cout << hex <<"0x"<< x << endl << endl;
    ////////////////////////////////////////
    
    int res = x^(x>>16);
    res = res^(res>>8);
    res = res^(res>>4);
    res = res^(res>>2);
    res = res^(res>>1);

    ///////////////////////////////////////////
    cout <<"res: 0x"<< res << endl;
    
    
    cout <<"XR: 0x"<< !(x&res) << endl;
    //int x_prime = x|x>>31|x>>30|x>>29|x>>28|x>>27|x>>26|x>>25|x>>24|x>>23|x>>22|x>>21|x>>20|x>>19|x>>18|x>>17|x>>16|x>>15|x>>14|x>>13|x>>12|x>>11|x>>10|x>>9|x>>8|x>>7|x>>6|x>>5|x>>4|x>>3|x>>2|x>>1;
    
    // cout << "x|";

    // for(int i=31;i>=0;i--){
    //     cout << "x>>"<<i<<"|";
    // }
}

/*
      At first time, I solved using concept of bound. (Is x-Tmin_n<0 and Tmax_n-x<0?)
      But this method exceeds max operation limit. So I find another way.
      
      Val1 : Truncated Value
      If x>=0:
         remains only n-1 bit and fill with 0 at w=n ~ w=31. And compare with x using XOR operation.
      If x<0:
         remains only n-1 bit and fill with 1 at w=n ~ w=31. And compare with x.

      Val2 : Sign mask
      We can get sign of x by "sign=(1<<31)&x"
      And, if we do operation sign>>(32-(n-1)), this value will be
         If x>=0:
            sign = 0x00000000
            sign>>(32-(n-1)): [000...000]
         If x<=0:
            sign = 0x80000000
            sign>>(32-(n-1)): [111..'100...000]
     
      Finally, merge Var1 and Var2 and return. (Var1|Var2)

   */
