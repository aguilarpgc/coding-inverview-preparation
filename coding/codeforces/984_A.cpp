#include <iostream>
#include <algorithm>

int main () {
    
    int n;
    std::cin >> n;
    
    int a[n];
    
    for (int i=0; i < n; i++) {
        std::cin >> a[i];
    }
    
    std::sort(a,a+n);
    
    std::cout<<a[(n-1)/2];
    
    return 0;
}


