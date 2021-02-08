//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    int a[n+1];
    
    for (int i=1; i<=n; i++) {
        cin >> a[i];
    }
    
    int shots;
    cin >> shots;
    int x,y;
    
    while (shots--) {
        cin >> x >> y;
        
        a[x-1] += (y - 1);
        a[x+1] += a[x] - y;
        
        a[x] = 0;
    }
    
    for (int i=1; i<=n; i++) {
        cout << a[i] << endl;
    }
    
    return 0;
}
