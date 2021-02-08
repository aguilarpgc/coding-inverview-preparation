//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, a, b, c, d;
    cin >> t;
    
    while(t--) {
        cin >> a >> b >> c >> d;
        
        int max1 = max(a,b);
        
        if(max(a,b) == max(c, d) && min(a,b) + min(c,d) == max1) {
            cout << "Yes";
        }
        else {
            cout << "No";
        }
        
        cout << endl;
    }
    
    return 0;
}
