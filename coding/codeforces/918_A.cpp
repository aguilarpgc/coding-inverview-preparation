//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    if(n < 3) {
        cout << string(n,'O');
    } else {
        int f0 = 3;
        int f1 = 5;
        int next = f0 + f1;
        
        cout << "OO";
        
        for (int i=3; i<=n; i++) {
            
            if(i < f0) {
                cout << "o";
            } else {
                f0 = f1;
                f1 = next;
                next = f0 + f1;
                
                cout << "O";
            }
        }
    }
    
    cout << endl;
    
    return 0;
}
