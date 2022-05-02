// O(mn), O(mn)
class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        let rows = grid.count
        let cols = grid[0].count
        
        var stack: [[Int]] = []
        
        for i in 0..<rows {
            for j in 0..<cols {
                if grid[i][j] == 2 {
                    stack.append([i,j])
                }
            }
        }
        
        var visited: Set<[Int]> = Set()
        var level = -1
        
        while !stack.isEmpty {
            for _ in 0..<stack.count {
                let coord = stack.removeFirst()
                let directions = [[0, -1], [0, 1], [-1, 0], [1, 0]]
                
                for dir in directions {
                    let row = coord[0] + dir[0]
                    let col = coord[1] + dir[1]
                    if row >= 0 && col >= 0 && row < rows && col < cols &&
                        !visited.contains([row, col]) && grid[row][col] == 1 {
                        visited.insert([row, col])
                        stack.append([row, col])
                    }
                }
            }
            level += 1
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if grid[i][j] == 1 && !visited.contains([i,j]) {
                    return -1
                }
            }
        }
        
        return level != -1 ? level : 0
    }
}

