class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else {
            return []
        }
        var ranges: [String] = []
        var l = nums[0]
        for j in 1...nums.count {
            if j == nums.count || (nums[j] - nums[j-1] > 1) {
                if l == nums[j-1] {
                    ranges.append("\(l)")   
                } else {
                    ranges.append("\(l)->\(nums[j-1])")   
                }
                if j == nums.count {
                    break
                }
                l = nums[j]
            }
        }
        return ranges
    }
}
