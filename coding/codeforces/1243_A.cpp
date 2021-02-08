//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int k, n;
    cin >> k;
    
    while(k--) {
        cin >> n;
        
        int a[n];
        int h[1000] = {0};
        
        for (int i=0; i<n; i++) {
            cin >> a[i];
            h[a[i] - 1]++;
        }
        
        int r = -1;
        
        for (int i=n-1; i>=0; i--) {
            if(h[i] >= (i + 1)) {
                r = i + 1;
                break;
            }
            
            h[i-1] += h[i];
        }
        
        if (r == -1) {
            cout << 1;
        } else {
            cout << r;
        }
        cout << endl;
    }
    
    return 0;
}
