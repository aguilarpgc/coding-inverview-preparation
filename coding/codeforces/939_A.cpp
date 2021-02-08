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

    for (int i=1; i<=n; i++) {
        if (a[a[a[i]]] == i) {
            cout << "Yes" << endl;
            return 0;
        }
    }
    
    cout << "No" << endl;
    
    return 0;
}
