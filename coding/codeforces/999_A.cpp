#include <iostream>

int main() {
    
    int n,k;
    scanf("%d %d ",&n, &k);
    
    int a[n+1];
    
    for (int i=1; i<=n; i++) {
        scanf("%d", &a[i]);
    }
    
    int l=1, r=n;
    
    int result = 0, moved=0;
    
    while(l<=r) {
        
        if (l==r) {
            if(a[l]<=k) {
                result++;
                l++;
            }
            break;
        }
        
        moved = 0;
        
        if(a[l]<=k) {
            moved=1;
            result++;
            l++;
        }
        
        if(a[r]<=k) {
            moved=1;
            result++;
            r--;
        }
        
        if (!moved) {
            break;
        }
    }
    
    printf("%d", result);
    
    return 0;
}
