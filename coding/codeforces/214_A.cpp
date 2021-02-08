#include <iostream>

using namespace std;

int main() {
    
    int n,m;
    cin >> n >> m;
    
    
    int result1 = 0, result2 = 0;
    int r=0;
    
    for (int i=0; i*i<=n ; i++) {
        for (int j=0; j*j<=m ; j++) {
            
            result1 = i*i + j;
            result2 = i + j*j;
            
            if (result1 == n && result2 == m) {
                r++;
            } else if(result1 >= n || result2 >= m) {
                break;
            }
        }
    }
    
    cout << r;
    
    return 0;
}
