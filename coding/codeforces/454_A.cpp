//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,l,r;
    cin >> n;
    
    l=r=n/2;
    
    for (int i=0; i<n; i++) {
        
        for (int j=0; j<n; j++) {
            if(j < l || j > r) {
                cout << "*";
            } else {
                cout << "D";
            }
        }
        
        cout << endl;
        
        if(i < n / 2) {
            l--;
            r++;
        } else {
            l++;
            r--;
        }
    }
    
    return 0;
}
