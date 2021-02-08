//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, n, k, r;
    cin >> t;
    
    while(t--) {
        cin >> n >> k;
        
        if (n % 2 == 1) {
            if (k % 2 == 0) {
                cout << "NO" << endl;
            } else {
                r = n - k + 1;
                if (r > 0) {
                    cout << "YES" << endl;
                    for (int i=0; i<k-1; i++) {
                        cout << 1 << endl;
                    }
                    cout << r << endl;
                } else {
                    cout << "NO" << endl;
                    
                }
            }
        } else {
            
            if (n / 2 < k) {
                r = n - k + 1;
                if (r % 2 == 1) {
                    cout << "YES" << endl;
                    for (int i=0; i<k-1; i++) {
                        cout << 1 << endl;
                    }
                    cout << r << endl;
                } else {
                    cout << "NO" << endl;
                }
            } else {
                r = n - 2 * (k-1);
                
                if (r > 1) {
                    cout << "YES" << endl;
                    for (int i=0; i<k-1; i++) {
                        cout << 2 << endl;
                    }
                    cout << r << endl;
                } else {
                    cout << "NO" << endl;
                }
            }
        }
    }
    
    return 0;
}



