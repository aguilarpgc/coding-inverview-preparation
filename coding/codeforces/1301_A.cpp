#include <iostream>
#include <string>

int main() {
    
    int t,r;
    std::cin>>t;
    std::string a,b,c;
    
    while(t--) {
        std::cin>>a>>b>>c;
        r=1;
        for (int i=0; i<a.length(); i++) {
            if(!(a[i]==c[i] || b[i]==c[i])) {
                r=0;
                break;
            }
        }
        
        std::cout<<((r==1) ? "YES" : "NO")<<std::endl;
    }
    
    return 0;
}

