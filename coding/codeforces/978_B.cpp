#include <iostream>

int main() {
    int n, count_x=0, x=0;
    std::string s;
    
    std::cin>>n;
    std::cin>>s;
    
    for(char c: s) {
        if (c !='x') {
            count_x=0;
        } else {
            count_x++;
        }
        
        if (count_x >=3) {
            x++;
        }
    }
    
    std::cout<<x;
    
    return 0;
}
