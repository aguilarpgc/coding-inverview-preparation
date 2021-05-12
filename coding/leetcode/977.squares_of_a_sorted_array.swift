class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        
        var squares = Array(repeating: 0, count: nums.count)

        var left = 0
        var right = nums.count - 1
        var i = nums.count - 1
        
        while left <= right {
            if abs(nums[left]) > abs(nums[right]) {
                squares[i] = nums[left] * nums[left]
                left += 1
            } else {
                squares[i] = nums[right] * nums[right]
                right -= 1
            }
            i -= 1
        }
        
        return squares
    }
}
