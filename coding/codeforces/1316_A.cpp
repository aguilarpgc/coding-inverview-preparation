#include <iostream>

using namespace std;

int main() {
    
    int t,n,m,r;
    
    cin >> t;
    
    int a[1000];
    
    while(t--) {
        cin >> n >> m;
     
        int tot_remaining = 0;
        
        for (int i =0; i<n; i++) {
            cin >> a[i];
            tot_remaining += a[i];
        }
        
        tot_remaining -= a[0];
        
        r = min(tot_remaining, m-a[0]);
        
        cout << a[0] + r << endl;
    }
    
    return 0;
}
