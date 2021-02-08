//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    int a[n];
    for (int i=0; i<n; i++) {
        cin >> a[i];
    }
    
    int i1,i2;
    
    for (int i=0; i<n; i++) {
        if(a[i] == 1) {
            i1 = i;
        } else if(a[i] == n) {
            i2 = i;
        }
    }
    
    int r = max(max(i1, i2), max(n-1-i1, n-1-i2));
    
    cout << r << endl;
    
    return 0;
}

