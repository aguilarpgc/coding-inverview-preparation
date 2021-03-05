class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var result = 0
        let rows = grid.count
        for i in 0..<grid.count {
            let columns = grid[i].count
            for j in 0..<columns { 
                if grid[i][j] == 1 {
                    result += 4
                    if i - 1 >= 0 && grid[i-1][j] == 1 {
                        result -= 1
                    }
                    if j - 1 >= 0 && grid[i][j-1] == 1 {
                        result -= 1
                    }
                    if i + 1 < rows && grid[i+1][j] == 1 {
                        result -= 1
                    }
                    if j + 1 < columns && grid[i][j+1] == 1 {
                        result -= 1
                    }
                }
            }
        }
        
        return result
    }
}
