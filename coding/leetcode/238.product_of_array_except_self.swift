// O(n), O(n)
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else {
            return []
        }
        var result = Array(repeating: 1, count: nums.count)
        
        var prefix = 1
        for i in 0..<nums.count {
            result[i] *= prefix
            prefix *= nums[i]
        }
        
        var postfix = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            result[i] *= postfix
            postfix *= nums[i]
        }
        
        return result
    }
}

