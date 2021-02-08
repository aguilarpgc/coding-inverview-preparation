//#include <bits/stdc++.h>
#include <iostream>
#include <cmath>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t,n,m,k;
    cin >> t;
    
    while(t--) {
        cin >> n >> m >> k;
        int cards = n / k;
        
        if (m == 0) {
            cout << 0 << endl;
        } else if (m <= cards) {
            cout << m << endl;
            continue;
        } else {
            m -= cards;
            int max = ceil(m/double(k-1));
            if (cards == max)
                cout << 0;
            else
                cout << (cards - max) << endl;
            
            cout << endl;
        }   
    }
    
    return 0;
}
