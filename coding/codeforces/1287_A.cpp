#include <iostream>

using namespace std;

int main() {
    
    int t;
    cin >> t;
    
    int n,r,c,angry;
    string a;
    
    while(t--) {
        cin>>n>>a;
    
        r = c = angry = 0;
        
        for (int i=0; i<n; i++) {
            
            if(angry && a[i] == 'P') {
                r = max(r,++c);
            }
            
            if(a[i] == 'A') {
                angry = 1;
                c = 0;
            }
        }

        cout << r << endl;
    }
    
    return 0;
}
