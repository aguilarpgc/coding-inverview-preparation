// O(n), O(n)
class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var stack: [Int] = []
        var result: [Int] = []
        
        for i in 0..<nums.count {
            while let index = stack.last, nums[i] >= nums[index] {
                stack.removeLast()
            }
            if let index = stack.first, i - index >= k {
                stack.removeFirst()
            }
            stack.append(i)
            if i >= k - 1 {
                result.append(nums[stack.first!])
            }
        }
        
        return result
    }
}

