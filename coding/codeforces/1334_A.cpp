#include <iostream>

void stats() {
    int n;
    scanf("%d", &n);
    
    int p, c, max_players=0, max_clears=0, result=1;
    
    while(n--) {
        scanf("%d %d", &p, &c);
        if (c > p) {
            result = 0;
        }
        if (max_players > p || max_clears > c) {
            result = 0;
        }
        if ((c - max_clears) > (p - max_players)) {
            result = 0;
        }
        
        max_players = p;
        max_clears = c;
    }
    
    printf("%s\n", result ? "YES" : "NO");
}

int main() {
    int t;
    scanf("%d", &t);
    
    while(t--) {
        stats();
    }
    
    return 0;
}
