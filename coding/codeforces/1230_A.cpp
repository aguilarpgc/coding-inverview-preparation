#include <iostream>
#include <algorithm>

int main() {
    
    int a[4];
    scanf("%d %d %d %d", &a[0], &a[1], &a[2], &a[3]);
    
    std::sort(a,a+4);
    
    if((a[0] + a[3]) == (a[1] + a[2]) || ((a[0] + a[2]) + a[1] == a[3])) {
        printf("YES");
    } else {
        printf("NO");
    }
    
    return 0;
}
