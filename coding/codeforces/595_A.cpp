//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,m;
    
    cin >> n >> m;
    
    int r = 0, a, b;
    
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++) {
            cin >> a >> b;
            r += (a | b);
        }
    }
    
    cout << r << endl;
    
    return 0;
}
