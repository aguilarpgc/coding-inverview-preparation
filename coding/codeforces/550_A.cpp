#include <iostream>

int main() {
    std::string s;
    std::cin>>s;
    
    int indexA = 0, indexB = 0;
    
    for (int i=0; i<s.size()-1; i++) {
        
        if (s[i] == 'A') {
            if (s[i+1] == 'B') indexA = i;
        } else if (s[i] == 'B') {
            if (s[i+1] == 'A') indexB = i;
        }
        
        if (abs(indexA - indexB) > 1) {
            break;
        }
    }
    
    printf("%s", (abs(indexA - indexB) > 1) ? "YES" : "NO");
    
    return 0;
}

