// O(mn), O(mn)
class Solution {
    func solve(_ board: inout [[Character]]) {
        guard board.count > 2 && board[0].count > 2 else {
            return
        }
        
        let rows = board.count
        let cols = board[0].count
        
        var visited: Set<[Int]> = Set()
        
        func dfsZero(_ row: Int, _ col: Int) {
            guard row >= 0 && col >= 0 && row < rows && col < cols &&
                    !visited.contains([row, col]) &&
                    board[row][col] == "O" else {
                        return
                    }
            
            visited.insert([row,col])
            
            board[row][col] = "Z"
            
            dfsZero(row + 1, col)
            dfsZero(row - 1, col)
            dfsZero(row, col + 1)
            dfsZero(row, col - 1)
        }
        
        for i in 0..<rows {
            if !visited.contains([i, 0]) {
                dfsZero(i, 0)
            }
            if !visited.contains([i, cols - 1]) {
                dfsZero(i, cols - 1)
            }
        }
        for j in 0..<cols {
            if !visited.contains([0, j]) {
                dfsZero(0, j)
            }
            if !visited.contains([rows - 1, j]) {
                dfsZero(rows - 1, j)
            }
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if board[i][j] == "O" {
                    board[i][j] = "X"
                } else if board[i][j] == "Z" {
                    board[i][j] = "O"
                }
            }
        }
    }
}

