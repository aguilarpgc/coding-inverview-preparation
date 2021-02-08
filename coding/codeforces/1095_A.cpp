#include <iostream>

int main() {
    int n;
    std::cin>>n;
    
    char s[n];
    std::cin>>s;
    
    for (int i=1, j=0; j<=n; i++, j += i) {
        std::cout<<s[j];
    }
    
    return 0;
}