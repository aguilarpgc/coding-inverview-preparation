//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n,x;
    cin >> n >> x;
    
    int card;
    int sum=0;
    
    while(n--) {
        cin >> card;
        sum+=card;
    }

    sum = abs(sum);
    
    cout << (sum + x - 1) / x << endl;
    
    return 0;
}
