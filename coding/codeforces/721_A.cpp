#include <iostream>
#include <vector>

int main() {
    
    int n;
    scanf("%d", &n);
    
    char s[n];
    scanf("%s",s);
    
    std::vector<int> v;
    
    int count = 0;
    
    for (int i=0; i<n; i++) {
        
        if(s[i] == 'B') {
            count++;
        } else {
            if (count > 0) {
                v.push_back(count);
            }
            count = 0;
        }
    }
    
    if (count > 0) {
        v.push_back(count);
    }
    
    if(v.empty()) {
        printf("0\n");
    } else {
        printf("%lu\n", v.size());
        for(auto g: v) {
            printf("%d\n", g);
        }
    }
    
    return 0;
}
