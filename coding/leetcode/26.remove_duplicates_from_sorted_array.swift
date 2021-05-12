class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        var j = 0
        for i in 1..<nums.count {
            if nums[i] != nums[i-1] {
                j += 1
                nums[j] = nums[i]
            }
        }
        return j + 1
    }
}
