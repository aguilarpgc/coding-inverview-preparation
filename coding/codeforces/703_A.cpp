#include <iostream>

int main() {
    
    int n, r=0;
    scanf("%d", &n);
    
    int m,c;
    
    while(n--) {
        scanf("%d %d", &m, &c);
        if(m > c)
            r++;
        else if (m < c)
            r--;
    }
    
    if(r == 0)
        printf("Friendship is magic!^^");
    else if (r > 0)
        printf("Mishka");
    else
        printf("Chris");
    
    return 0;
}
