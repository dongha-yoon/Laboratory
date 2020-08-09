/*
    This code is checking about "Does vector constuctor using iterator just copies value? Or pointing same reference?""
*/


#include <iostream>
#include <vector>

using namespace std;

int main(){
    double arr[4] = {1.2132,3.12,3.21,1.412};
    vector<double> vec(begin(arr),end(arr));

    for(int i=0;i<4;i++)
        cout << "Arr : " << arr[i] << " | " << "Vec : " << vec[i] << endl;
    cout << "=======================" << endl;

    vec[0]=9.9999;
    for(int i=0;i<4;i++)
        cout << "Arr : " << arr[i] << " | " << "Vec : " << vec[i] << endl;

}

/*
    result : this constructor just copies value.

> output
    Arr : 1.2132 | Vec : 1.2132
    Arr : 3.12 | Vec : 3.12
    Arr : 3.21 | Vec : 3.21
    Arr : 1.412 | Vec : 1.412
    =======================
    Arr : 1.2132 | Vec : 9.9999
    Arr : 3.12 | Vec : 3.12
    Arr : 3.21 | Vec : 3.21
    Arr : 1.412 | Vec : 1.412
*/