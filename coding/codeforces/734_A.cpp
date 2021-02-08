#include <iostream>

int main() {
    int n, a=0;
    scanf("%d", &n);
    
    char s[n];
    scanf("%s", s);
    
    for (int i=0; i<n; i++) {
        if (s[i] == 'A') {
            a++;
        } else {
            a--;
        }
    }
    
    if (a == 0)
        printf("Friendship");
    else if(a > 0)
        printf("Anton");
    else
        printf("Danik");
    
    return 0;
}
