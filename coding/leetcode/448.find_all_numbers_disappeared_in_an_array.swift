class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var appeared = Set<Int>()
        for i in 0..<nums.count {
            appeared.insert(nums[i])
        }
        guard nums.count != appeared.count else {
            return []
        }
        var result = [Int]()
        result.reserveCapacity(nums.count - appeared.count)
        for i in 1..<nums.count + 1 {
            guard !appeared.contains(i) else {
                continue
            }
            result.append(i)
        }
        return result
    }
}
