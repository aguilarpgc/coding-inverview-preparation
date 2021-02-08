//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, n, k;
    cin >> t;
    
    string alphabet = "abcdefghijklmnopqrstuvwxyz";
    
    while(t--) {
        cin >> n >> k;

        int i=0;
        
        while(n--) {
            cout << alphabet[i++];
            if (i == k) {
                i = 0;
            }
        }
        
        cout << endl;
    }
    
    
    return 0;
}
