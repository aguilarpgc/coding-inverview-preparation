#include <iostream>

int main() {
    
    int t, n, x, a, b;
    scanf("%d", &t);
    
    while(t--) {
        scanf("%d %d %d %d", &n, &x, &a, &b);
        int d=std::abs(a-b) + x;
        if (d<n-1) {
            printf("%d\n",d);
        } else {
            printf("%d\n",n-1);
        }
    }
    
    return 0;
}
