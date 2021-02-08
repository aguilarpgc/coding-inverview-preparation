class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var found: [Int: Int] = [:]
        for i in 0..<nums.count {
            if let index = found[nums[i]], i - index <= k {
                return true
            } else {
                found[nums[i]] = i
            }
        }
        return false
    }
}
