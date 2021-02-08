#include <iostream>

int main() {
    int t, result, num_zeros, foundOne;
    std::string s;
    std::cin>>t;
    
    while(t--) {
        std::cin>>s;
        result = 0; num_zeros = 0; foundOne = 0;
        
        for (int i=0; i<s.length(); i++) {
            if(foundOne != 0) {
                if(s[i] == '0) {
                    num_zeros += 1;
                } else if(num_zeros != 0){
                    result += num_zeros;
                    num_zeros = 0;
                }
            } else if(s[i] == '1') {
                foundOne = 1;
            }
        }
        std::cout<<result<<std::endl;
    }
    
    return 0;
}
