#include <iostream>
#include <string>

using namespace std;

int main() {
    
    int n;
    cin >> n;
    
    int a[n];
    
    for (int i=0; i<n; i++) {
        cin >> a[i];
    }
    
    pair<int, string> work[3] = {{0, "chest"},{0, "biceps"},{0, "back"}};
    
    for (int i=0; i<n; i++) {
        work[i % 3].first += a[i];
    }
    
    int index=0;
    for (int i=1; i<3; i++) {
        if(work[i].first > work[index].first) {
            index = i;
        }
    }
    
    cout << work[index].second;
    
    
    return 0;
}
