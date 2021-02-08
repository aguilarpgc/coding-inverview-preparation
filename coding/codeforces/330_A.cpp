#include <iostream>

using namespace std;

int main() {
    
    int r,c;
    
    cin >> r >> c;
    
    char a[r][c];
    
    for (int i=0; i<r; i++) {
        for (int j=0; j<c; j++) {
            cin >> a[i][j];
        }
    }
    
    int numr[10] = {0}, numc[10] = {0};
    
    for (int i=0; i<r; i++) {
        for (int j=0; j<c; j++) {
            if (a[i][j] == 'S') {
                numr[i] = numc[j] = 1;
            }
        }
    }
    
    int count_r = 0, count_c = 0;
    
    for (int i=0; i<r; i++) {
        if (numr[i] == 0) {
            count_r++;
        }
    }
    for (int i=0; i<c; i++) {
        if (numc[i] == 0) {
            count_c++;
        }
    }
    
    int result = (count_r * c + count_c * r) - (count_r * count_c);
    
    cout << result;
    
    return 0;
}
