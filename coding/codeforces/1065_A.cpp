//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t;
    cin >> t;
    
    long long s,a,b,c;
    
    while(t--) {

        cin >> s >> a >> b >> c;
        
        long long total_bars = (s / c);
        long long total_free = (total_bars / a) * b;
        cout << total_bars + total_free << endl;
    }
    
    return 0;
}
