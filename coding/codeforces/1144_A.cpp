//#include <bits/stdc++.h>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    string s;
    cin >> n;
    
    string abc = "abcdefghijklmnopqrstuvwxyz";
    
    int r,c;
    
    while(n--) {
        cin >> s;
        
        int indexes[26] = {0};
        
        for (int i=0; i<(int)s.size(); i++) {
            indexes[((int)abc.find(s[i]))]++;
        }
        
        r=c=0;
        
        for (int i=0; i<26; i++) {
            if(indexes[i] == 1) {
                c++;
                r = max(r,c);
            } else {
                c=0;
            }
        }
        
        if (r == (int)s.size()) {
            cout << "Yes" << endl;
        } else {
            cout << "No" << endl;
        }
    }
    
    return 0;
}

