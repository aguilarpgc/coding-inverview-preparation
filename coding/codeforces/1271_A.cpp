//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int a,b,c,d,e,f;
    
    cin >> a >> b >> c >> d >> e >> f;
    
    int t1 = min(a,d);
    int t2 = min(b,min(c,d));
    
    int total = 0;
    
    if(e >= f) {
        total += t1 * e;
        d -= t1;
        
        t2 = min(b, min(c,d));
        total += t2 * f;
    } else {
        total += t2 * f;
        d -= t2;
        
        t1 = min(a, d);
        total += t1 * e;
    }
    
    cout << total << endl;
    
    return 0;
}
