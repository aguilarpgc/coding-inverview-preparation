#include <iostream>

int main() {
    int n;
    double p, r=0;
    
    scanf("%d",&n);
    
    for (int i=0; i<n; i++) {
        scanf("%lf",&p);
        r += (p / n);
    }
    
    printf("%0.12lf", r);
    
    return 0;
}

