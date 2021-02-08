//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,l,r;
    cin >> n;
    
    int a[n];
    
    for (int i=1; i<n; i++) {
        cin >> a[i];
    }
    
    cin >> l >> r;
    
    int total=0;
    for (int i=l; i<r; i++) {
        total += a[i];
    }
    
    cout << total;
    
    return 0;
}
