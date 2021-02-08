//#include <bits/stdc++.h>
#include <iostream>

using namespace std;

int sum_digits(int n) {
    
    int sum=0;
    
    while(n != 0) {
        sum += n % 10;
        n /= 10;
    }
    
    sum += n % 10;
    
    return sum;
}
int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int a;
    cin >> a;
    
    while(sum_digits(a) % 4 != 0) {
        a++;
    }
    
    cout << a << endl;
    
    return 0;
}
