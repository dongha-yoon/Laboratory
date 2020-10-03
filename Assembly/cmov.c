
int cmov(int x,int y){
    int v;
    if(x<y){
        v=y-x;
    }
    else{
        v=x-y;
    }
    return v;
}

int cmov2(int x,int y){
    int v=y-x;
    int v2=x-y;
    int t= x<y;
    if(!t) v=v2;
    return v;
}