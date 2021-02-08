//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    string s;
    cin >> s;
    for (int i=0; i<s.size(); i++) {
        if(s[i]=='-') {
            if(s[++i] == '.')
                cout << 1;
            else
                cout << 2;
        } else {
            cout << 0;
        }
    }
    
    return 0;
}

