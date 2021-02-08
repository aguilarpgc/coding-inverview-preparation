//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,m,x,y;
    
    cin >> n >> m;
    
    int a[101] = {0};
    
    for (int i=0; i<n; i++) {
        cin >> x;
        for (int j=0; j<x; j++) {
            cin >> y;
            a[y] = 1;
        }
    }
    
    int all = 1;
    for (int i=1; i<=m; i++) {
        all &= a[i];
    }
    
    cout << (all ? "YES" : "NO");
    
    return 0;
}
