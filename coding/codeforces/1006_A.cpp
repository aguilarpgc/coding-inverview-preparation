#include <iostream>

int main() {
    
    int n, c;
    scanf("%d", &n);
    
    while(n--) {
        scanf("%d", &c);
        
        if (c % 2 != 1) {
            c--;
        }
        
        if (n == 0) {
            printf("%d", c);
        } else {
            printf("%d ", c);
        }
    }
    
    return 0;
}
