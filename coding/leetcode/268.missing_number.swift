class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var missing = 0
        for i in 0..<nums.count {
            missing ^= i ^ nums[i]
        }
        return missing ^ nums.count
    }
}
