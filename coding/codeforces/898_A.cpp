//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    int mod = (n % 10);
    
    if(mod > 5)
        n += (10 - mod);
    else
        n -= mod;
    
    cout << n << endl;
    
    return 0;
}
