class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        return nums.sorted { $0 > $1 } [k-1]
    }
}
