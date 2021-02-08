#include <iostream>

int main() {
    int s,v1,v2,t1,t2;
    scanf("%d %d %d %d %d", &s,&v1,&v2,&t1,&t2);
    
    int r1 = v1 * s + t1 * 2;
    int r2 = v2 * s + t2 * 2;
    
    if (r1 < r2 )
        printf("First");
    else if (r1 > r2 )
        printf("Second");
    else
        printf("Friendship");
    
    return 0;
}

