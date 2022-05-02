// O(mn), O(mn)
class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var result = 0
        
        let rows = grid.count
        let cols = grid[0].count
        var visited: Set<[Int]> = Set()
        
        func dfs(_ row: Int, _ col: Int) -> Int {
            guard row >= 0 && col >= 0 && row < rows && col < cols,
                  !visited.contains([row,col]),
                  grid[row][col] == 1 else {
                      return 0
                  }
            
            visited.insert([row,col])
            
            var area = 0
            area += dfs(row + 1, col)
            area += dfs(row - 1, col)
            area += dfs(row, col + 1)
            area += dfs(row, col - 1)
            
            return 1 + area
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if !visited.contains([i,j]) && grid[i][j] == 1 {
                    result = max(result, dfs(i,j))
                }
            }
        }
        
        return result
    }
}

