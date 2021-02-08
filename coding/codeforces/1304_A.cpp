#include <iostream>

int main() {
    
    int t;
    std::cin >> t;
    
    long long int x,y,a,b;
    
    while(t--) {
        std::cin >> x >> y >> a >> b;
        
        long long int j = (y - x) % (a + b);
        
        if (j != 0) {
            std::cout << "-1" << std::endl;
        } else {
            long long int r = (y - x) / (a + b);
            std::cout << r << std::endl;
        }
    }
    
    return 0;
}
