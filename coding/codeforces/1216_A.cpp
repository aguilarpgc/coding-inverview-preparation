//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    string s;
    cin >> s;
    
    int r=0;
//    int c_a=0; int c_b=0;
    
    for (int i=0; i < n; i++) {
        if(s[i] == 'a' && s[i+1] == 'a') {
            r++;
            s[i+1] = 'b';
        } else if(s[i] == 'b' && s[i+1] == 'b') {
            r++;
            s[i+1] = 'a';
        }
        
        i++;
            
//        if(s[i++] == 'a' && s[i++] == 'b')
//            c_a++;
//        else
//            c_b++;
//
//        if(s[i++] == 'a')
//            c_a++;
//        else
//            c_b++;
//
//        if(c_a > c_b) {
//            c_b++;
//            c_a--;
//            r++;
//        } else if (c_b > c_a) {
//            c_b--;
//            c_a++;
//            r++;
//        }
    }
    
    cout << r << endl;
    cout << s;
    
    return 0;
}
