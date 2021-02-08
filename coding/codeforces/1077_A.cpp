#include <iostream>

int main() {
    
    int t,l;
    scanf("%d", &t);
    
    long long a,b,r;
    
    while(t--) {
        scanf("%lld %lld %d",&a,&b,&l);
        r = (a-b)*(l/2);
        if (l % 2 == 1) {
            r += a;
        }
        printf("%lld\n", r);
    }
    
    return 0;
}

