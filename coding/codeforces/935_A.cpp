#include <iostream>

int main(){
    int n, c=0;;
    scanf("%d", &n);
    
    for (int i=1; i<=n/2; i++) {
        if (n%i==0)
            c++;
    }
    
    printf("%d", c);
}
