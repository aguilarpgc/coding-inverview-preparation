// O(n^2), O(n^2)
class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows: [Set] = Array(repeating: Set<Int>(), count: 9)
        var columns: [Set] = Array(repeating: Set<Int>(), count: 9)
        var squares: [Set] = Array(repeating: Set<Int>(), count: 9)
        
        for i in 0..<9 {
            for j in 0..<9 {
                guard let value = Int(String(board[i][j])) else {
                    continue
                }
                let squareIndex = (i / 3) * 3 + (j / 3)
                if rows[i].contains(value) || columns[j].contains(value) ||
                    squares[squareIndex].contains(value) {
                    return false
                }
                rows[i].insert(value)
                columns[j].insert(value)
                squares[squareIndex].insert(value)
            }
        }
        
        return true
    }

}
