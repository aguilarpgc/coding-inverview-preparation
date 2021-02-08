#include <iostream>

int main() {
    
    int t;
    scanf("%d", &t);
    
    int n,a,b,c,d;
    int max1, min1, max2, min2;
    
    int found = 0;
    
    while (t--) {
        scanf("%d %d %d %d %d", &n, &a, &b, &c, &d);
        min1 = n * (a - b);
        max1 = n * (a + b);
        min2 = c - d;
        max2 = c + d;
        
        if ((min1 <= min2 && max1 >= min2) ||
            (min1 >= min2 && min1 <= max2)){
            found = 1;
        } else {
            found = 0;
        }
        
        if (found) {
            printf("YES\n");
        } else {
            printf("NO\n");
        }
    }
    
    return 0;
}


