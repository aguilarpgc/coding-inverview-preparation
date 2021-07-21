class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var low = 0
        var high = nums.count - 1
        while low <= high {
            let mid = low + (high - low) / 2
            if nums[mid] == target {
                return mid
            } else if target < nums[mid] {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return low
    }
}
