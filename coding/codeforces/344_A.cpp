#include <iostream>

int main() {
    int n, v, c=0, previous=11;
    scanf("%d", &n);
    
    while(n--){
        scanf("%d", &v);
        if (v != previous) {
            previous = v;
            c++;
        }
    }
    printf("%d", c);
    
    return 0;
}
