#include <iostream>

int main() {
    int n;
    long c = 0;
    
    scanf("%d", &n);
    
    c += (n / 100); n %= 100;
    c += (n / 20); n %= 20;
    c += (n / 10); n %= 10;
    c += (n / 5); n %= 5;
    c += n;
    
    printf("%ld", c);
    
    return 0;
}
