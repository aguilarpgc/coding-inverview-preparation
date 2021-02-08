//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, n , x, even, odd;
    cin >> t;
    int a[1001];
    
    while(t--)  {
        cin >> n >> x;
        
        even = 0;
        odd = 0;
        
        for (int i=0; i<n; i++) {
            cin >> a[i];
            if (a[i] % 2 == 0)
                even++;
            else
                odd++;
        }
        
        while(odd > 2 && x > 2) {
            odd-=2;
            x-=2;
        }
        
        while(even > 0 && x > 1) {
            even--;
            x--;
        }
        
        if (x % 2 != 0 && x <= odd) {
            cout << "Yes";
        } else {
            cout << "No";
        }
        
        cout << endl;
    }
    
    return 0;
}
