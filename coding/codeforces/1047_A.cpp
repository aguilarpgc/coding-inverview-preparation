//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    int r = n - 2;
    
    if (r % 3 != 0) {
        cout << 1 << " " << 1 << " " << r;
    } else {
        cout << 1 << " " << 2 << " " << r - 1;
    }
    
    return 0;
}
