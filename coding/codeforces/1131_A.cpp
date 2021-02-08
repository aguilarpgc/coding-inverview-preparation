//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int w1,w2,h1,h2;
    cin >> w1 >> h1 >> w2 >> h2;
    
    int r = ((h1 + h2 + max(w1, w2) + 4) << 1) - 4;
    
    cout << r << endl;
    
    return 0;
}
