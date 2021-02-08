#include <iostream>
#include <map>

int main() {
    int n;
    std::string s;
    
    std::cin >> n;
    
    std::map<std::string, int> poly = {
        {"Tetrahedron", 4},
        {"Cube", 6},
        {"Octahedron", 8},
        {"Dodecahedron", 12},
        {"Icosahedron", 20}
    };
    
    unsigned long total = 0;
    
    while(n--) {
        std::cin >> s;
        total += poly[s];
    }
    
    std::cout << total;
    
    return 0;
}
