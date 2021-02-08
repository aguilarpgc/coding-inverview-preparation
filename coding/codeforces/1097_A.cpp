#include <iostream>
#include <set>
#include <string>

int main() {
    std::set<char> rank, suit;
    std::string card, v;
    
    std::cin >> card;
    
    for (int i =0; i<5; i++) {
        std::cin >> v;
        rank.insert(v[0]);
        suit.insert(v[1]);
    }
    
    if (rank.find(card[0]) != rank.end() || suit.find(card[1]) != suit.end()) {
        printf("YES");
    } else {
        printf("NO");
    }
        
    return 0;
}
