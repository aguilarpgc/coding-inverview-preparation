#include <iostream>
#include <algorithm>

void savings() {
    int n, x;
    scanf("%d %d", &n, &x);
    
    long long array[n];
    
    for (int i=0; i<n; i++) {
        scanf("%lld", &array[i]);
    }
    
    std::sort(array, array + n);
    
    unsigned long long sum = 0, wealthy;
    int change = 0;
    
    for (int i=0; i<n; i++) {
        sum += array[n-(i+1)];
        wealthy = (x * (i + 1));
        if (sum >= wealthy) {
            change++;
        } else {
            break;
        }
    }
    
    printf("%d\n", change);
}

int main() {
    int t;
    scanf("%d", &t);
    
    while(t--) {
        savings();
    }
    
    return 0;
}

