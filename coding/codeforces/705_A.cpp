#include <iostream>

int main() {
    int n, i=1;
    scanf("%d", &n);
    
    printf("I hate ");
    
    while(i<n) {
        printf("that I ");
        if (i%2==0) {
            printf("hate ");
        } else {
            printf("love ");
        }
        
        i++;
    }
    
    printf("it");
    
    return 0;
}


