#include <iostream>

int main() {
    int n, c, max=0;
    int coins[101] = {0};
    scanf("%d", &n);
    
    while(n--) {
        scanf("%d", &c);
        coins[c]++;
    }
    
    for (int i=0; i<101; i++) {
        if(coins[i] > max) {
            max = coins[i];
        }
    }
    
    printf("%d", max);
    
    return 0;
}
