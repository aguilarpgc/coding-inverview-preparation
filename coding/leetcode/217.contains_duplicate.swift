// O(n), O(n)
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
	// note: Set.contains O(1)
        return Set(nums).count != nums.count
    }
}
