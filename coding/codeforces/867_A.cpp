#include <iostream>

int main() {
    int n, c=0;
    
    scanf("%d", &n);
    
    char a[n];
    
    scanf("%s", a);
    
    char previous = a[0];
    
    for (int i=1; i<n; i++) {
        if (previous != a[i]) {
            if (a[i]=='S')
                c--;
            else
                c++;
            
            previous = a[i];
        }
    }
    
    printf(c > 0 ? "YES" : "NO");
    
    return 0;
}
