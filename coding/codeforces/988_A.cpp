#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main() {
    
    int k,n,v;
    cin >> n >> k;
    
    set<int> a;
    vector<int> r;
    
    for (int i=0; i<n; i++) {
        cin >> v;
        bool inserted = a.insert(v).second;
        if(inserted) {
            r.push_back(i);
        }
    }
    
    if((int)a.size() < k) {
        cout << "NO";
    } else {
        cout << "YES" << endl;
        for (int i=0; i<k; i++) {
            cout << r[i] + 1 << endl;
        }
    }
    
    return 0;
}
