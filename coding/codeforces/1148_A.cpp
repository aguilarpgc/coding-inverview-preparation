//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int a, b, c;
    cin >> a >> b >> c;
    
    long long int tot =  (min(a, b) + c);
    tot <<= 1;
    
    if (a == b) {
        cout << tot;
    } else {
        cout << tot + 1;
    }

    cout << endl;
    
    return 0;
}
