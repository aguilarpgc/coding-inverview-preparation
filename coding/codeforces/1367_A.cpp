//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t;
    cin >> t;
    
    string s;
    
    while(t--) {
        cin >> s;
        
        cout << s[0];
        
        for (int i=1; i<(int)s.size() - 2; i+=2) {
            cout << s[i];
        }
        cout << s[s.size() - 1];
        
        cout << endl;
    }
    
    return 0;
}
