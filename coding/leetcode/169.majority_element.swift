class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var c = 1
        var last = nums[0]
        for index in 1..<nums.count {
            if nums[index] == last {
                c += 1
            } else if c == 1 {
                last = nums[index]
            } else {
                c -= 1
            }
        }
        return last
    }
}
