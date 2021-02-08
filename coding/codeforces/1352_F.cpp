//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t,n0,n1,n2;
    
    cin >> t;
    
    while(t--) {
        cin >> n0 >> n1 >> n2;
        
        if(n1 != 0 && n1 % 2 == 0) {
            for (int i=0; i<n0; i++) {
                cout << "0";
            }
            
            for (int i=0; i<n1/2; i++) {
                cout << "01";
            }
            
            if (n2 != 0) {
                for (int i=0; i<n2; i++) {
                    cout << "1";
                }
            }
            
            cout << "0";
            
        } else {
            for (int i=0; i<n0; i++) {
                cout << "0";
            }
            if (n1 != 0) {
                for (int i=0; i<(n1+1)/2; i++) {
                    cout << "01";
                }
            } else if(n0 != 0){
                cout << "0";
            }
            if (n2 != 0) {
                for (int i=0; i<n2; i++) {
                    cout << "1";
                }
                if(n1 == 0) {
                    cout << "1";
                }
            }
        }
        
        cout << endl;
    }
    
    return 0;
}
