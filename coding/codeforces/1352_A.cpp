//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n, t, k, r, d;
    cin >> t;
    
    int result[5];
    
    while(t--) {
        cin >> n;
        
        k = 0;
        d = 10000;
        
        while(d!=0) {
            
            r = n / d;
            
            if (r != 0) {
                result[k++] = r * d;
                n %= d;
            }
            
            d /= 10;
        }
        
        cout << k << endl;
        
        for (int i = 0; i<k; i++) {
            cout << result[i] << endl;
        }
    }
    
    return 0;
}
