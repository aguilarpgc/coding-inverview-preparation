#include <iostream>

int main() {
    int n;
    scanf("%d", &n);
    
    int b,p,f, price_h, price_c, total;
    
    while(n--) {
        
        scanf("%d %d %d %d %d", &b, &p, &f, &price_h, &price_c);
        
        b /= 2;
        
        total = 0;
        
        if (price_h >= price_c) {
            total += std::min(b, p) * price_h;
            b -= std::min(b, p);
            
            total += std::min(b, f) * price_c;
            
        } else {
            
            total += std::min(b, f) * price_c;
            b -= std::min(b, f);
            
            total += std::min(b, p) * price_h;
        }
        
        printf("%d\n", total);
    }
    
    return 0;
}
