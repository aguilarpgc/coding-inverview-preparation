#include <iostream>

int main() {
    
    int n;
    scanf("%d",&n);
    int tot=0,r=1,v1,v2,v3,v4;
    
    scanf("%d %d %d %d", &v1, &v2, &v3, &v4);
    
    int thomas = v1+v2+v3+v4;
    
    for (int i=1; i<n; i++) {
        scanf("%d %d %d %d", &v1, &v2, &v3, &v4);
        tot = v1+v2+v3+v4;
        if(thomas<tot) {
            r++;
        }
    }
    
    printf("%d",r);
    
    return 0;
}
