#include <iostream>

int main() {
    
    int t,n;
    scanf("%d", &t);
    
    while(t--) {
    
        scanf("%d", &n);
        
        if (n == 2) {
            printf("2\n");
        } else {
            
            long long int limit = n/2;
            
            long long int sum1=0;
            long long int sum2=0;
            long long int result = 2;
            
            for (int i=0; i<n; i++) {
                
                if (i<limit-1) {
                    sum1 += result;
                } else if(i == (n-1)) {
                    sum1 += result;
                } else {
                    sum2 += result;
                }
                
                result *= 2;
            }
            
            printf("%lld\n", abs(sum2 - sum1));
        }
        
    }
    
    return 0;
}
