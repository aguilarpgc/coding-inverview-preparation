#include <iostream>
#include <algorithm>

int main() {
    int t;
    scanf("%d",&t);
    
    while(t--) {
        int n;
        scanf("%d",&n);
        
        long int a[n];
        int r[n];
        
        for (int i=0; i<n; i++) {
            scanf("%ld", &a[i]);
        }
        
        std::sort(a, a + n);
        
        for (int i=0; i<n; i++) {
            int j;
            if (i % 2 == 0) {
                j = i/2;
            } else {
                j = n-(i+1)/2;
            }
            r[i] = j;
        }
        
        for (int i=n-1; i>=0; i--) {
            printf("%ld", a[r[i]]);
            
            if (i!=0) {
                printf(" ");
            }
        }
        
        printf("\n");
    }
    
    return 0;
}
