//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    
    int w,h,k;
    cin >> w >> h >> k;
    
    int r=0;
    for (int i=0; i<k; i++) {
        
        r += (w + h) << 1;
        r -= 4;
        
        w-=4;
        h-=4;
    }
    
    cout << r << endl;
    
    return 0;
}
