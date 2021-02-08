//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t,a,b,r,s;
    
    cin >> t;
    
    while(t--) {
        
        cin >> a >> b;
        
        if (a == b) {
            cout << 0 << endl;
            continue;
        }
        
        
        s = abs(a - b) / 5;
        r = abs(a - b) % 5;
        
        if (r > 2) {
            s += 2;
        } else if (r > 0) {
            s += 1;
        }
        
        cout << s << endl;
    }
    
    return 0;
}
