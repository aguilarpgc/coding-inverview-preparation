class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var complement: [Int: Int] = [:]
        for i in 0..<nums.count {
            let needed = target - nums[i]
            if let index = complement[needed], index != i {
                return [i, index]
            } else {
                complement[nums[i]] = i
            }
        }
        return []
    }
}
