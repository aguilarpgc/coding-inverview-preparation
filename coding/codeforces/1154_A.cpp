#include <iostream>
#include <algorithm>

int main() {
    long int s[4];
    for (int i=0; i<4; i++) {
        scanf("%ld", &s[i]);
    }
    
    std::sort(s, s+4);
    printf("%ld %ld %ld", s[3]-s[0], s[3]-s[1], s[3]-s[2]);
    
    return 0;
}
