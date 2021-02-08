//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t,n,m,x,y;
    
    cin >> t;
    
    while(t--) {
        cin >> n >> m >> x >> y;
        string rows[n];
        
        for (int i=0; i<n; i++) {
            cin >> rows[i];
        }
        
        if ((x << 1) <= y) {
            int total = 0;
            for (int i=0; i<n; i++) {
                for (int j=0; j<m; j++) {
                    if(rows[i][j] == '.') {
                        total++;
                    }
                }
            }
            cout << (total * x);
            
        } else {
            
            int total_spaces = 0;
            int adjacents = 0;
            
            for (int i=0; i<n; i++) {
                int c = 0;
                for (int j = 0; j<m; j++) {
                    if(rows[i][j] == '.') {
                        total_spaces++;
                        if(c == 1) {
                            adjacents++;
                            c = 0;
                        } else {
                            c = 1;
                        }
                    } else {
                        c = 0;
                    }
                }
            }
            
            cout << ((total_spaces - (adjacents << 1)) * x + adjacents * y);
        }
        
        cout << endl;
    }
    
    return 0;
}
