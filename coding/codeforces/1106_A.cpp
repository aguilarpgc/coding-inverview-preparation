//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    char a[n][n];
    
    for (int i=0; i<n; i++) {
        for (int j=0; j<n; j++) {
            cin >> a[i][j];
        }
    }
    
    int crosses = 0;
    
    for (int i=1; i<n-1; i++) {
        for (int j=1; j<n-1; j++) {
            if(a[i][j] == a[i-1][j-1] && a[i-1][j-1] == a[i-1][j+1] && a[i-1][j+1] == a[i+1][j-1] &&
               a[i+1][j-1] == a[i+1][j+1] && a[i][j] == 'X') {
                crosses++;
            }
        }
    }
    
    cout << crosses << endl;
    
    return 0;
}
