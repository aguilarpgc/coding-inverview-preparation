//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,m;
    string s;
    
    cin >> n >> m;
    cin >> s;
    
    int l, r;
    char c1, c2;
    
    while(m--) {
        cin >> l >> r >> c1 >> c2;
        for (int i=l-1; i<r; i++) {
            if (s[i] == c1)
                s[i] = c2;
        }
    }
    
    cout << s << endl;
    
    return 0;
}
