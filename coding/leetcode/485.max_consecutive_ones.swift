class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount = 0
        var count = 0
        for i in 0..<nums.count {
            if nums[i] == 1 {
                count += 1
            } else {
                maxCount = max(count, maxCount)
                count = 0
            }
        }
        return max(count, maxCount)
    }
}
