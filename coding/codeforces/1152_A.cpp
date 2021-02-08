//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,m;
    cin >> n >> m;
    
    int val;
    int a_odd=0;
    int a_even=0;
    int b_odd=0;
    int b_even=0;
    
    int r=0;
    
    for (int i=0; i<n; i++) {
        cin >> val;
        if (val & 1)
            a_odd++;
        else
            a_even++;
    }
    
    for (int i=0; i<m; i++) {
        cin >> val;
        if (val & 1)
            b_odd++;
        else
            b_even++;
    }
    
    r += min(a_odd, b_even);
    r += min(b_odd, a_even);
    
    cout << r << endl;
    
    return 0;
}
