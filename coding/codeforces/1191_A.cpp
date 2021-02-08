#include <iostream>

int main() {
    
    int n;
    scanf("%d",&n);
    
    int r=n%4;
    
    if(r==0) {
        printf("1 A");
    } else if (r==1) {
        printf("0 A");
    } else if (r==2) {
        printf("1 B");
    } else {
        printf("2 A");
    }
    
    return 0;
}
