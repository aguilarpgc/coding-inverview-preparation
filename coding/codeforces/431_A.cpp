#include <iostream>

int main() {
    
    unsigned int a[5];
    std::cin>>a[1]>>a[2]>>a[3]>>a[4];
    
    std::string s;
    std::cin>>s;
    
    long sum = 0;
    
    for (int i=0; i<s.size(); i++) {
        sum += a[s[i]-'0'];  // convert to equivalent in int
    }
    
    std::cout<<sum;
    
    return 0;
}

