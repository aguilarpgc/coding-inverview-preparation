// O(n), O(n)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else {
            return [-1, -1]
        }
        var hashMap: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            if let firstIndex = hashMap[nums[i]] {
                return [i, firstIndex]
            } else {
                hashMap[target - nums[i]] = i
            }
        }
        return [-1, -1]
    }
}

