#include <iostream>
#include <map>
#include <string>

int main() {
    
    std::map<std::string, std::string> gems = {
        {"purple", "Power" },
        {"green", "Time" },
        {"blue", "Space" },
        {"orange", "Soul" },
        {"red", "Reality" },
        {"yellow", "Mind" }
    };
    
    int n;
    std::string key;
    std::cin>>n;
    
    while(n--) {
        std::cin>>key;
        gems.erase(key);
    }
    
    std::cout << gems.size() << std::endl;
    
    for(auto pair: gems) {
        std::cout << pair.second << std::endl;
    }
    
    return 0;
}


