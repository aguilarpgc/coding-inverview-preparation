//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, n, r;
    cin >> t;
    
    int limit = 25820;
    
    int a[limit+1];
    
    for (int i=1; i<=limit; i++) {
        a[i] = (3*(i*i) + i) / 2;
    }

    while(t--) {
        cin >> n;
        r = 0;
        
        for (int i=limit; i>=1;) {
            if(a[i] <= n) {
                n -= a[i];
                r++;
            } else {
                i--;
            }
        }
        
        cout << r << endl;
    }
    
    return 0;
}
