//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    int a[n];
    
    int r=0;
    
    for (int i=0; i<n; i++) {
        cin >> a[i];
        r += abs(a[i]);
    }
    
    cout << r << endl;
    
    return 0;
}
