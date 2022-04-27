// O(n), O(n)
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        guard !nums.isEmpty else {
            return []
        }
        var frequency: [Int: Int] = [:]
        for num in nums {
            frequency[num, default: 0] += 1
        }
        var buckets = Array(repeating: [Int](), count: nums.count)
        for (num, count) in frequency {
            buckets[count - 1].append(num)
        }
        var result: [Int] = []
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            for num in buckets[i] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
        return result
    }
}

