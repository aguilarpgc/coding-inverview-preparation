#include <iostream>

int max_matrix(int i, int j) {
   
    if (i == 1 || j == 1) {
        return 1;
    } else if (i == j) {
        return max_matrix(i, j-1) * 2;
    } else {
        return max_matrix(i, j-1) + max_matrix(i-1,j);
    }
}

int main() {
    
    int n;
    scanf("%d", &n);
    printf("%d", max_matrix(n,n));
    
    return 0;
}
