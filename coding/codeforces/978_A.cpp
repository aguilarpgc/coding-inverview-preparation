#include <iostream>
#include <set>

int main() {
    int n;
    scanf("%d", &n);
    
    std::set<int> s;
    
    int a[n], r[n];
    
    for (int i=0; i<n; i++) {
        scanf("%d", &a[i]);
    }
    
    int j=n;
    
    for (int i=n-1; i>=0; i--) {
        if (s.find(a[i]) == s.end()) { // std::set.find -> O(log n)
            s.insert(a[i]); // O(log n); std::find -> O(n)
            r[--j] = a[i];
        }
    }
    
    printf("%d\n", n-j);
    
    for (int i=j; i<n; i++) {
        printf("%d\n", r[i]);
    }
    
    return 0;
}

