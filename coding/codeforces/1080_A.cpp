//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,k;
    cin >> n >> k;
    
    int tot = 0;
    
    int r = (2*n);
    int g = (5*n);
    int b = (8*n);
    
    tot += r / k;
    tot += g / k;
    tot += b / k;
    
    if (r % k != 0) tot++;
    if (g % k != 0) tot++;
    if (b % k != 0) tot++;
    
    cout << tot;
    
    return 0;
}
