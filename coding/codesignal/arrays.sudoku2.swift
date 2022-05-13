func solution(grid: [[Character]]) -> Bool {
    var rows: [Set<Int>] = Array(repeating: Set(), count: 9)
    var cols: [Set<Int>] = Array(repeating: Set(), count: 9)
    var squares: [Set<Int>] = Array(repeating: Set(), count: 9)
    
    for i in 0..<9 {
        for j in 0..<9 {
            guard let val = Int(String(grid[i][j])) else {
                continue
            }
            let k = (i / 3) * 3 + j / 3
            guard !rows[i].contains(val) && !cols[j].contains(val) && !squares[k].contains(val) else {
                return false
            }
            rows[i].insert(val)
            cols[j].insert(val)
            squares[k].insert(val)
        }
    }
    return true
}

