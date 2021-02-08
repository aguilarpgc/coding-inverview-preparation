#include <iostream>
#include <string>

int main() {
    
    int n;
    std::string s;
    std::cin >> n >> s;
    
    int total = 0;
    
    for (int i=0; i < s.size(); i++) {

        if((s[i] - '0') % 2 == 0) {
            total += (i + 1);
        }
    }
    
    std::cout << total;
    
    return 0;
}

