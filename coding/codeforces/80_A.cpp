#include <iostream>

using namespace std;

bool is_prime(int k) {
    for (int i = 2; i<k; i++) {
        if(k % i == 0)
            return false;
    }
    
    return true;
}

int main() {
    
    int n, m;
    
    cin >> n >> m;
       
    int next_prime;

    for (int i=n+1; ; i++) {
        if (is_prime(i)) {
            next_prime = i;
            break;
        }
    }
    
    cout << (next_prime == m ? "YES" : "NO");
       
    return 0;
}

