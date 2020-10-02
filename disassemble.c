


int returntest(int x){
    if(x==0)
        return 0;
    int y=1;
    int z = 3+y;
    x+=returntest(x-1);

    return x+y+z;
}

void main(){
    int x=3;
    x=returntest(x);
}