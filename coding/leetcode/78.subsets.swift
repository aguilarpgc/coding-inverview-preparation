class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        
        func backtrack(_ index: Int, _ current: [Int]) {
            if index == nums.count {
                result.append(current)
                return
            }
            
            backtrack(index + 1, current)
            backtrack(index + 1, current + [nums[index]])
        }
        
        backtrack(0, [])
        
        return result
    }
}

