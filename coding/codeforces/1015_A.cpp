#include <iostream>

int main() {
    
    int n,m,l,r;
    scanf("%d %d", &n, &m);
    
    int s[101] = {0};
    
    while(n--) {
       scanf("%d %d", &l, &r);
        for (int i=l; i<=r; i++) {
            s[i]=1;
        }
    }
    
    int count=0;
    
    for (int i=1; i<=m; i++) {
        if(s[i]==0) {
            count++;
        }
    }
    
    printf("%d\n",count);
    
    for (int i=1; i<=m; i++) {
        if(s[i]==0) {
            printf("%d\n",i);
        }
    }
    
    return 0;
}
