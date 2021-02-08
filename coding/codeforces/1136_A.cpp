#include <iostream>
#include <utility>

int main() {
    
    int n,k;
    std::cin>>n;
    
    std::pair<int,int> chapters[n];
    
    for (int i=0; i<n; i++) {
        std::cin>> chapters[i].first >> chapters[i].second;
    }
    
    std::cin>>k;
    
    int r=0;
    for (int i=n-1; i>=0; i--) {
        r++;
        if (k >= chapters[i].first) {
            break;
        }
    }
    
    std::cout<<r;
    
    return 0;
}
