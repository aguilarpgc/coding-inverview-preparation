class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var freq: [Int: Int] = [:]
        var total = 0
        for val in nums {
            if let count = freq[val] {
                total += count
                freq[val] = count + 1
            } else {
                freq[val] = 1
            }
        }
        return total
    }
}
