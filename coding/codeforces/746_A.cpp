//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int a,b,c;
    cin >> a >> b >> c;
    
    b /= 2;
    c /= 4;
    
    cout << 7 * min(a,min(b,c));
    
    return 0;
}
