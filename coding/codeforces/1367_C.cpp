//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t,n,k;
    string s;
    
    cin >> t;
    
    while(t--) {
        cin >> n >> k;
        cin >> s;
        
        int r=0;
        int c=0, spaces=(k << 1) + 1;
        
        int last_one = -(k+1);
        int changed_one = -1; //, temp_change=-1;
        
        for (int i=0; i<(int)s.size(); i++) {
            if(s[i] == '0') {
                if(changed_one == -1 && (i - last_one) >= (k+1)) {
                    changed_one = i;
                }
                
                if(changed_one != -1 && ((i - changed_one) == k)) {
                    r++;
                    last_one = changed_one;
                    changed_one = -1;
                }
            } else {
                if(changed_one != -1 && (i - changed_one) <= k) {
                    changed_one = -1;
                }
                
                last_one = i;
            }
        }
        
        if (changed_one != -1) {
            r++;
        }
        
        cout << r << endl;
    }
    
    return 0;
}
