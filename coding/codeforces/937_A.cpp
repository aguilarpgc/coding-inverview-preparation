//#include <bits/stdc++.h>
#include <iostream>
#include <algorithm>

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
    
    sort(a, a + n);
    
    int r = 0;
    if (a[0] != 0) {
        r++;
    }
    
    for (int i=1; i<n; i++) {
        if(a[i] != 0 && a[i] != a[i-1]) {
            r++;
        }
    }
    
    cout << r << endl;
    
    return 0;
}
