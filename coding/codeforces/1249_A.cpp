#include <iostream>
#include <algorithm>

using namespace std;

int main() {
    int q, n, a[100];
    cin>>q;
    while(q--) {
        cin>>n;
        for (int i=0; i<n; i++) {
            cin>>a[i];
        }
        
        sort(a,a+n);
        
        int found=0;
        
        for (int i=0; i<n-1; i++) {
            if(a[i+1]-a[i]==1) {
                found = 1;
                break;
            }
        }
        
        if (found==1) {
            cout<<2<<endl;
        } else {
            cout<<1<<endl;
        }
        
    }
    
    return 0;
}



