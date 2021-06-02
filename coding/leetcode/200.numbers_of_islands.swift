class Solution {
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
}
