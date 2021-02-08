#include <iostream>

using namespace std;

int main() {
    
    int q, a, b;
    long long n;
    
    cin >> q;
    
    while(q--) {
        cin >> n >> a >> b;
        
        int p = a * 2;
        
        if(p == b) {
            cout << n * a;
        } else if (p < b) {
            cout << n * a;
        } else {
            if(n % 2 == 0) {
                cout << (n / 2) * b;
            } else {
                cout << (n / 2) * b + a;
            }
        }
        
        cout << endl;
    }
    
    return 0;
}

