#include <iostream>
#include <algorithm>

int main() {
    
    int a[3];
    for (int i=0; i<3; i++) {
        scanf("%d",&a[i]);
    }
    
    std::sort(a,a+3);
    
    int valid = a[0] + a[1] - a[2];
    
    if (valid>0) {
        printf("0");
    } else {
        printf("%d", abs(valid) + 1);
    }
    
    return 0;
}
