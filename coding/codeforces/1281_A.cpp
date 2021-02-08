//#include <bits/stdc++.h>
#include <iostream>
#include <string>
#include <map>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t;
    string s;
    cin >> t;
    
    map<char,string> l = {
        {'o', "FILIPINO"},
        {'u', "JAPANESE"},
        {'a', "KOREAN"}
    };
    
    while(t--) {
        cin >> s;
        cout << l[s.back()] << "\n";
    }
    
    return 0;
}
