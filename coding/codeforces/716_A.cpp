#include <iostream>

int main() {
    
    int n,c;
    scanf("%d %d", &n, &c);
    
    int w[n];

    for (int i=0; i<n; i++) {
        scanf("%d", &w[i]);
    }
    
    int r=1;
    
    for (int j=n-1; j>0; j--) {
        if(w[j] - w[j-1] > c) {
            break;
        }
        r++;
    }
    
    printf("%d", r);
    
    return 0;
}
