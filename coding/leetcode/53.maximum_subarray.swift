// O(n), O(1)
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        var current = nums[0]
        var result = current
        for i in 1..<nums.count {
            current = nums[i] + max(0, current)
            result = max(result, current)
        }
        return result
    }
}
