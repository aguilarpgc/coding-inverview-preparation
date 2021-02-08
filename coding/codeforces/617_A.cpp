#include <iostream>

int main() {
    int x, r=0;
    scanf("%d", &x);
    
    r += (x / 5); x %= 5;
    r += (x / 4); x %= 4;
    r += (x / 3); x %= 3;
    r += (x / 2); x %= 2;
    r += x;
    
    printf("%d", r);
    
    return 0;
}

