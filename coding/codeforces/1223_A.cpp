#include <iostream>

int main() {
    int t,n,matches=0;
    scanf("%d",&t);
    
    while(t--) {
        scanf("%d",&n);
        
        if (n < 4) {
            matches = 4 - n;
        } else if (n % 2 == 0) {
            matches = 0;
        } else {
            matches = 1;
        }
        
        printf("%d\n",matches);
    }
    
    return 0;
}
