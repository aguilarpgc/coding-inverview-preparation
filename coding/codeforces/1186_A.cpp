#include <iostream>

int main() {
    int n, m, k;
    scanf("%d %d %d", &n, &m, &k);
    printf(((n <= m) && (n <= k)) ? "Yes" : "No");
    return 0;
}
