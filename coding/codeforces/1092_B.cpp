#include <iostream>

int main() {
    int n, c, r;
    int s[101] = {0};
    scanf("%d", &n);
    
    while(n--) {
        scanf("%d", &c);
        if(s[c] == 1)
            s[c] = 0;
        else
            s[c] = 1;
    }
    
    r = 0;
    
    int j = 0;
    
    for (int i=1; i<101; i++) { // O(n)
        if(s[i] == 1) {
            if (j != 0) {
                r += (i - j);
                j = 0;
            } else {
                j = i;
            }
        }
        
    }
    
    printf("%d", r);
    
    return 0;
}
