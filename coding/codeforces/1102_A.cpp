#include <iostream>

using namespace std;

int main() {
    
    int n;
    cin >> n;
    int mod = n % 4;
    cout << ((mod == 0 || mod == 3) ? 0 :  1);
    
    return 0;
}
