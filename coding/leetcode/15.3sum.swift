// O(n^2), O(n)
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else {
            return []
        }
        let nums = nums.sorted()
        var result: [[Int]] = []
        
        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            var l = i + 1, r = nums.count - 1
            let target = -1 * nums[i]
            
            while l < r {
                let sum = nums[l] + nums[r]
                if sum < target {
                    l += 1
                } else if sum > target {
                    r -= 1
                } else {
                    let three = [nums[i], nums[l], nums[r]].sorted()
                    result.append(three)
                    l += 1
                    r -= 1
                    while nums[l] == nums[l - 1] && l < r {
                        l += 1
                    }
                }
            }
        }
        return result
    }
}

