// O(2^t), O(t)
class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        guard !candidates.isEmpty else {
            return []
        }
        
        func dfs(_ index: Int, path: [Int], total: Int) {
            if total == target {
                result.append(path)
                return
            }
            guard index < candidates.count && total < target else {
                return
            }
            
            let currentTotal = total + candidates[index]
            let currentPath = path + [candidates[index]]
            
            dfs(index, path: currentPath, total: currentTotal)
            dfs(index + 1, path: path, total: total)
        }
        
        var result: [[Int]] = []
        dfs(0, path: [], total: 0)
        return result
    }
}
