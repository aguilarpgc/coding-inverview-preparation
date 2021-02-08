//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, n, m;
    cin >> t;
    
    int a[50][50];
    
    while(t--) {
        cin >> n >> m;
        
        int r[50]={0};
        int c[50]={0};
        
        for (int i = 0; i<n; i++) {
            for (int j = 0; j<m; j++) {
                cin >> a[i][j];
                if(a[i][j] == 1) {
                    r[i] = 1;
                    c[j] = 1;
                }
            }
        }
        
        int available_r=0;
        int available_c=0;
        
        for (int i=0; i<n; i++) {
            if(r[i] != 1) available_r++;
        }
        
        for (int i=0; i<m; i++) {
            if(c[i] != 1) available_c++;
        }
        
        int result = min(available_r, available_c);
//        cout << result << endl;
        if((result % 2) == 0) {
            cout << "Vivek" << endl;
        } else {
            cout << "Ashish" << endl;
        }
    }
    
    return 0;
}
