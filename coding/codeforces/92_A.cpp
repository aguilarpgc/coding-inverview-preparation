//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,m;
    cin >> n >> m;
    
    int total = n*(n+1) / 2;
    
    int res = m % total;
    
    if(res == 0) {
        cout << 0;
    } else {
        int sum=0;
        int r=0;
        for (int i=1; i<=n; i++) {
            sum+=i;
            if(sum == res) {
                cout << 0;
                break;
            }
            else if(sum > res) {
                r = res - ((i-1)*(i) / 2);
                cout << r;
                break;
            }
        }
    }
    
    cout << endl;
    
    return 0;
}
