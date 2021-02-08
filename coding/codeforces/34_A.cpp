//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    int a[n+1];
    
    for (int i=1; i<=n; i++) {
        cin >> a[i];
    }
    
    int i1 = 1, i2 = n;
    int diff = abs(a[i1] - a[i2]);
    
    for (int i=2; i<=n; i++) {
        if(abs(a[i] - a[i-1]) < diff) {
            i1 = i - 1;
            i2 = i;
            diff = abs(a[i] - a[i-1]);
        }
    }
    
    cout << i1 << endl << i2 << endl;
    
    return 0;
}

