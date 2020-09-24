/*
    This program is developed for checking time difference about array accessing method.
    
    # result
        arr[i][j] runtime : 5 sec
        accessing distance : 65439526619
        arr[j][i] runtime : 27 sec
        accessing distance : 3865764465637051
        arr[i][j] is 22 sec faster!
*/
#include <time.h>
#include <stdio.h>
#include <iostream>
#include <iomanip>

using namespace std;

#define MAX_SIZE 30000

int main(){
    //initialize
    time_t start1,start2,end1,end2;
    int **arr = new int*[MAX_SIZE];
    for(int i=0;i<MAX_SIZE;i++){
        arr[i]=new int[MAX_SIZE];
    }

    //check runtime and distance of arr[i][j]
    unsigned long long int acc_dist1=0;
    int* tmp= &arr[0][0];
    start1 = time(NULL);
    for(int i=0;i<MAX_SIZE;i++){
        for(int j=0;j<MAX_SIZE;j++){
            acc_dist1+= abs(&arr[i][j]-tmp);
            tmp = &arr[i][j];
            
            arr[i][j]=1;
        }
    }
    end1 = time(NULL);

    double time1 = double(end1-start1);
    cout << "arr[i][j] runtime : " << time1  << " sec\n";
    cout << "accessing distance : " << acc_dist1  << "\n";

    //check runtime and distance of arr[j][i]
    start2 = time(NULL);
    unsigned long long int acc_dist2=0;
    tmp=&arr[0][0];
    for(int i=0;i<MAX_SIZE;i++){
        for(int j=0;j<MAX_SIZE;j++){
            acc_dist2+= abs(&arr[j][i]-tmp);
            tmp = &arr[j][i];
            
            arr[j][i]=1;
        }
    }
    end2 = time(NULL);

    double time2 = double(end2-start2);
    cout << "arr[j][i] runtime : " << time2 << " sec\n";
    cout << "accessing distance : " << acc_dist2  << "\n";

    //print out result.
    if (time2 > time1)
        cout << "arr[i][j] is " << time2-time1 << " sec faster!" << "\n";
    else if (time2 < time1)
        cout << "arr[j][i] is " << time1-time2 << " sec faster!" << "\n";

    //clearing
    for(int i=0;i<MAX_SIZE;i++){
        delete [] arr[i];
    }
    delete [] arr;
}
