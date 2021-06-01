class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        guard nums.count > 2 else { return true }
        var ascending = true
        var descending = true
        for i in 1..<nums.count {
            if nums[i-1] < nums[i] {
                descending = false
            }
            if nums[i-1] > nums[i] {
                ascending = false
            }
            if !(ascending || descending) {
                return false
            }
        }
        return ascending || descending
    }
}
