//#include <bits/stdc++.h>
#include <iostream>
 
using namespace std;
 
bool is_valid_destination(char a[][50], int i, int j, int n, int m, pair<int, int> visited[][50]) {
    if(visited[i][j].first == 0 && i>=0 && i<=n-1 && j>=0 && j<=m-1 && a[i][j] != '#') {
        return true;
    } else {
        return false;
    }
}
 
int dfs(char a[][50], int r1, int c1, int r2, int c2, int n, int m, pair<int, int> visited[][50]) {
    
    if(r1 == r2 && c1 == c2) {
        return 1;
    }
    
    visited[r1][c1].first = 1;
    
    if(is_valid_destination(a, r1+1, c1, n, m, visited) && dfs(a, r1+1, c1, r2, c2, n, m, visited)){
        return 1;
    }
    if(is_valid_destination(a, r1, c1+1, n, m, visited) && dfs(a, r1, c1+1, r2, c2, n, m, visited)){
        return 1;
    }
    if(is_valid_destination(a, r1-1, c1, n, m, visited) && dfs(a, r1-1, c1, r2, c2, n, m, visited)){
        return 1;
    }
    if(is_valid_destination(a, r1, c1-1, n, m, visited) && dfs(a, r1, c1-1, r2, c2, n, m, visited)){
        return 1;
    }
    
    return 0;
}
 
int has_exit(char a[][50], int n, int m, int total_g, int total_b) {
 
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++) {
            char value = a[i][j];
            
            if(value == 'B') {
                // change available space to a wall so we can block bad guys
                if(i>0 && a[i-1][j] == '.')
                    a[i-1][j] = '#';
                if(j>0 && a[i][j-1] == '.')
                    a[i][j-1] = '#';
                if(i<n-1 && a[i+1][j] == '.')
                    a[i+1][j] = '#';
                if(j<m-1 && a[i][j+1] == '.')
                    a[i][j+1] = '#';
                
                // If neighbor is a good person then the answer is NO;
                if(i>0 && a[i-1][j] == 'G')
                    return 0;
                if(j>0 && a[i][j-1] == 'G')
                    return 0;
                if(i<n-1 && a[i+1][j] == 'G')
                    return 0;
                if(j<m-1 && a[i][j+1] == 'G')
                    return 0;
            }
        }
    }
    
    if(total_g == 0) {
        return 1;
    } else {
        if(a[n-1][m-1] == '#') {
            return 0;
        } else {
            int total_can = 0;
            
            // check if every good person can espace
            for (int i=0; i<n; i++) {
                for (int j=0; j<m; j++) {
                    char value = a[i][j];
                    if(value == 'G') {
                        pair<int,int> visited[50][50] = {make_pair(0, 0)};
                        total_can += dfs(a, i, j, n-1, m-1, n, m, visited);
                    }
                }
            }
            
            return (total_can == total_g) ? 1 : 0;
        }
    }
    
    return 1;
}
 
int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);
    
    int t, n, m;
    cin >> t;
    
    while(t--) {
        cin >> n >> m;
        char a[50][50];
        
        int total_G=0, total_B=0;
        
        for (int i=0; i<n; i++) {
            for (int j=0; j<m; j++) {
                cin >> a[i][j];
                
                if(a[i][j] == 'G') total_G++;
                if(a[i][j] == 'B') total_B++;
            }
        }
        
        cout << ((has_exit(a, n, m, total_G, total_B) == 1) ? "Yes" : "No") << endl;
    }
    
    return 0;
}
