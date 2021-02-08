#include <iostream>

int main() {
    
    int x,y,z;
    
    std::cin >> x >> y >> z;
    
    int upvotes = x - y;
    
    std::pair<int, int> bounds (upvotes - z, upvotes + z);
    
    if ((x == y) && z == 0) {
        std::cout << "0";
    } else if(bounds.second < 0) {
        std::cout << "-";
    } else if(bounds.first > 0) {
        std::cout << "+";
    } else {
        std::cout << "?";
    }
    
    return 0;
}
