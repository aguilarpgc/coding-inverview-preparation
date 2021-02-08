#include <iostream>
#include <algorithm>

using namespace std;

bool sort_first(pair<int, int> a, pair<int, int> b) {
    return a.first < b.first;
}

int main() {

    int n;
    cin >> n;
    pair<int, int> a[n];
    
    for (int i=0; i<n; i++) {
        cin >> a[i].first;
        a[i].second = i + 1;
    }
    
    sort(a,a+n,sort_first);
    
    for (int i=0; i < n/2; i++) {
        cout << a[i].second << " " << a[n-i-1].second << endl;
    }
    
    return 0;
}
