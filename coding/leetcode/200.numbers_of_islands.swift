// O(mn), O(mn)
class Solution {
    // DFS
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else { return 0 }
        var result = 0
        let countRows = grid.count
        let countColumns = grid[0].count
        var grid = grid
        for i in 0..<countRows {
            for j in 0..<countColumns {
                if grid[i][j] == "1" {
                    dfs(&grid, i, j, countRows, countColumns)
                    result += 1
                }
            }
        }
        return result
    }
    
    func dfs(_ grid: inout [[Character]], _ row: Int, _ column: Int, _ countRows: Int, _ countColumns: Int) {
        guard isValid(row, column, countRows, countColumns) && grid[row][column] == "1" else { return }
        grid[row][column] = "0"
        dfs(&grid, row + 1, column, countRows, countColumns)
        dfs(&grid, row - 1, column, countRows, countColumns)
        dfs(&grid, row, column + 1, countRows, countColumns)
        dfs(&grid, row, column - 1, countRows, countColumns)
    }
    
    func isValid(_ row: Int, _ column: Int, _ countRows: Int, _ countColumns: Int) -> Bool {
        return row >= 0 && column >= 0 && row < countRows && column < countColumns
    }
    
    
    // BFS
//    func numIslands(_ grid: [[Character]]) -> Int {
//        guard !grid.isEmpty && !grid[0].isEmpty else {
//            return 0
//        }
//        var result = 0
//        var visited: Set<[Int]> = Set()
//        let rows = grid.count
//        let cols = grid[0].count
//
//        func bfs(_ row: Int, _ col: Int) {
//            visited.insert([row,col])
//            var queue: [(Int, Int)] = [(row, col)]
//            while !queue.isEmpty {
//                let (r,c) = queue.removeFirst()
//                let directions = [[0,1],[1,0],[0,-1],[-1,0]]
//                for vector in directions {
//                    let newR = r + vector[0]
//                    let newC = c + vector[1]
//                    guard (newR < rows && newR >= 0 && newC < cols && newC >= 0) &&
//                            grid[newR][newC] == "1" &&
//                            !visited.contains([newR, newC]) else {
//                                continue
//                            }
//                    visited.insert([newR,newC])
//                    queue.append((newR,newC))
//                }
//            }
//        }
//
//        for i in 0..<rows {
//            for j in 0..<cols {
//                guard grid[i][j] == "1" && !visited.contains([i,j]) else {
//                    continue
//                }
//                result += 1
//                bfs(i,j)
//            }
//        }
//
//        return result
//    }
}
