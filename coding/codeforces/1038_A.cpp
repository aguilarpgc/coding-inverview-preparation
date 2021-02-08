//#include <bits/stdc++.h>
#include <iostream>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int n, k;
    int a[27] = {0};
    
    cin >> n >> k;
    string s;
    
    cin >> s;
    
    for (auto c: s) {
        int i = c - 'A';
        a[i]++;
    }
    
    int min=INT_MAX;
    
    for (int i=0; i<k; i++) {
        if(a[i] < min)
            min = a[i];
    }
    
    cout << min * k << endl;
    
    return 0;
}
