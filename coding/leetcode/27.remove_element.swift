class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var j = 0
        var count = 0
        for i in 0..<nums.count {
            while j < nums.count && nums[j] == val {
                j += 1
                count += 1
            }
            guard j < nums.count else { break }
            nums[i] = nums[j]
            j += 1
        }
        return nums.count - count
    }
}
