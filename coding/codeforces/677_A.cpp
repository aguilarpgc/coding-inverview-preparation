#include <iostream>

int main() {
    int n,h,v,w;
    
    scanf("%d %d",&n,&h);
    
    w=n;
    
    while(n--) {
        scanf("%d",&v);
        if(v>h) {
            w++;
        }
    }
    
    printf("%d",w);
    
    return 0;
}
