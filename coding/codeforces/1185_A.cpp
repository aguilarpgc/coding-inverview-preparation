//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int a,b,c,d;
    
    cin >> a >> b >> c >> d;
    
    int minimum = min(a,min(b,c));
    int maximum = max(a,max(b,c));
    int medium;
    
    if (a == minimum) {
        medium = min(b,c);
    } else {
        medium = min(a,max(b,c));
    }
    
    medium -= minimum;
    maximum -= minimum;
    
    int x = medium;
    int y = maximum - medium;
    
    int answer = 0;
    
    if(x < d) {
        answer += d - x;
    }
    if(y < d) {
        answer += d - y;
    }
    
    cout << answer << endl;
    
    return 0;
}
