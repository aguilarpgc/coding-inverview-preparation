//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t,n,m;
    cin >> t;
    
    while(t--) {
        cin >> n >> m;
        if ((n == 1 || m == 1) || (n == 2 && m == 2)) {
            cout << "YES" << endl;
        } else {
            cout << "NO" << endl;
        }
    }
    
    return 0;
}
