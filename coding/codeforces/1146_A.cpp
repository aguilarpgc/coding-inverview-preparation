#include <iostream>

using namespace std;

int main() {
    
    string s;
    cin >> s;
    int c=0;
    for (int i=0; i<s.size(); i++) {
        if (s[i] == 'a') {
            c++;
        }
    }
    
    int half = (int)s.size() / 2;
    
    if(c <= half) {
        cout << c * 2 - 1;
    } else {
        cout << (int)s.size();
    }
    
    return 0;
}
