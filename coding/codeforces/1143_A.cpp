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
    
    int r=0;
    int last = a[n-1];
    
    for (int i=n-2; i>=0; i--) {
        r++;
        if(a[i] != last) {
            break;
        } else {
            last = a[i];
        }
    }
    
    cout << (n - r) << endl;
    
    return 0;
}
