#include <iostream>

int main() {
    int n, respond, is_hard=0;
    std::cin >> n;
    
    for (int i=0; i<n; i++) {
        std::cin >> respond;
        is_hard |= respond;
    }
    
    std::cout << (is_hard ? "HARD" : "EASY");
    
    return 0;
}

