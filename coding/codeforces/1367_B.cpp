//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, n;
    cin >> t;
    
    while(t--) {
        cin >> n;
        
        int a[n];
        int odd=0, even=0;
        
        for (int i=0; i<n; i++) {
            cin >> a[i];
            
            if((i & 1) && !(a[i] & 1)) {
                even++;
            } else if(!(i & 1) && (a[i] & 1)) {
                odd++;
            }
        }
        if(even == odd)
            cout << even;
        else
            cout << -1;
            
        cout << endl;
    }
    
    return 0;
}
