//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    string s;
    int a,b;
    cin >> n;
    while(n--) {
        cin >> s >> a >> b;
        if (a >= 2400 && b > a) {
            cout << "YES" << endl;
            return 0;
        }
    }
    cout << "NO" << endl;
    
    return 0;
}

