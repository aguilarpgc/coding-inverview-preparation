// O(nm4^w), O(mn)
class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        guard word.count <= (board.count * board[0].count) else {
            return false
        }
        
        let rows = board.count
        let cols = board[0].count
        let word = Array(word)
        var visited: Set<[Int]> = Set()
        
        func dfs(_ i: Int, row: Int, col: Int) -> Bool {
            guard i < word.count else {
                return true
            }
            guard row >= 0 && row < rows && col >= 0 && col < cols,
                  !visited.contains([row, col]),
                  board[row][col] == word[i] else {
                      return false
                  }
            
            visited.insert([row, col])
            
            if dfs(i + 1, row: row, col: col + 1) ||
                dfs(i + 1, row: row, col: col - 1) ||
                dfs(i + 1, row: row + 1, col: col) ||
                dfs(i + 1, row: row - 1, col: col) {
                return true
            }
            visited.remove([row, col])
            return false
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if dfs(0, row: i, col: j) {
                    return true
                }
            }
        }
        
        return false
    }
}



