#include <iostream>

using namespace std;

int main() {
    
    int n,m,q,y;
    cin >> n >> m;
    
    string s1[n], s2[m];
    
    for (int i=0; i<n; i++) {
        cin >> s1[i];
    }
    for (int i=0; i<m; i++) {
        cin >> s2[i];
    }
    
    cin >> q;
    
    while(q--) {
        cin >> y;
        cout << s1[(y - 1) % n] << s2[(y - 1) % m] << endl;
    }
    
    return 0;
}
