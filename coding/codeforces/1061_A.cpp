#include <iostream>

int main() {
    
    long long int n, s;
    std::cin>> n >> s;
    
    long long int r = (s / n);
    
    if ((s % n) == 0) {
        std::cout << r;
    } else {
        std::cout << r + 1;
    }
    
    return 0;
}
