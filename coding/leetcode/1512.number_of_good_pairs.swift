class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var frequency: [Int: Int] = [:]
        var total = 0
        for val in nums {
            if let count = frequency[val] {
                total += count
            }
            frequency[val, default: 0] += 1
        }
        return total
    }
}
