#include <iostream>
#include <vector>

int main() {
    
    int n;
    scanf("%d",&n);
    int a[n];
    
    for (int i=0; i<n; i++) {
        scanf("%d",&a[i]);
    }
    
    int last_one_index=0;
    std::vector<int> ones;
    
    for (int i=1; i<n; i++) {
        if (a[i]==1) {
            ones.push_back(i-last_one_index);
            last_one_index=i;
        }
    }
    
    ones.push_back(n-1-last_one_index+1);
    
    printf("%ld\n", ones.size());
    
    for (auto one: ones) {
        printf("%d\n", one);
    }
    
    return 0;
}
