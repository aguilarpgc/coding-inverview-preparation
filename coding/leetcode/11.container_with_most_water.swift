// O(n), O(1)
class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        guard heights.count >= 2 else {
            return 0
        }
        var result = 0
        var l = 0, r = heights.count - 1
        
        while l < r {
            let area = min(heights[l], heights[r]) * (r - l)
            result = max(result, area)
            
            if heights[l] < heights[r] {
                l += 1
            } else if heights[l] > heights[r] {
                r -= 1
            } else {
                l += 1
                r -= 1
            }
        }
        return result
    }
}

