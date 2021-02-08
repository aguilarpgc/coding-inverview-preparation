//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n;
    cin >> n;
    
    if(n > 2) {
        cout << (n - 2);
    } else if (n == 2){
        cout << 4;
    } else {
        cout << 3;
    }
    
    cout << endl;
    
    return 0;
}
