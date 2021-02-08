//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int m,n;
    cin >> n >> m;
    
    int a[10] = {0};
    int b[10] = {0};
    
    int val;
    
    for (int i=0; i<n; i++) {
        cin >> a[i];
        b[a[i]]++;
    }
    
    for (int i=0; i<m; i++) {
        cin >> val;
        b[val]++;
    }

    for (int i=0; i<n; i++) {
        if(b[a[i]] == 2)
            cout << a[i] << endl;
    }
    
    return 0;
}
