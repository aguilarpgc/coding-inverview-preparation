#include <iostream>
#include <string>

using namespace std;

int main() {
    
    int t,n,found=0;
    string s;
    
    cin >> t;
    
    while(t--) {
        cin >> n;
        cin >> s;
        
        if(n < 11) {
            cout << "NO" << endl;
        } else {
            found = 0;
            
            for (int i=n-11; i>=0; i--) {
                if(s[i]=='8') {
                    found = 1;
                    break;
                }
            }
            
            cout << (found ? "YES" : "NO") << endl;
        }
    }
    
    return 0;
}

