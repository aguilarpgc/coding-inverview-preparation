#include <iostream>

int main() {
    int t;
    scanf("%d",&t);
    
    int n;
    int zeros, sum, r;
    
    while(t--) {
        scanf("%d",&n);
        int a[n];
        
        for (int i=0; i<n; i++) {
            scanf("%d",&a[i]);
        }
        
        zeros=sum=r=0;
        
        for (int i=0; i<n; i++) {
            if (a[i] == 0) {
                zeros++;
            }
            sum += a[i];
        }
        
        r=zeros;
        sum+=zeros;
        if(sum==0) {
            r++;
        }
        
        printf("%d\n", r);
    }
    
    return 0;
}
