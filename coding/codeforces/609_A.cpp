//#include <bits/stdc++.h>
#include <iostream>
#include <algorithm>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n, m;
    
    cin >> n >> m;
    
    int a[n];
    
    for (int i=0; i<n; i++) {
        cin >> a[i];
    }
    
    sort(a,a+n);
    
    int i=n-1;
    
    while(m > a[i--]) {
        m -= a[i+1];
    }
    
    cout << (n - i) - 1;
    
    return 0;
}
