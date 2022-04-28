class Solution {
    // O(n)
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else {
            return true
        }
        var target = nums.count - 1
        for i in (0..<nums.count).reversed() {
            if i + nums[i] >= target {
                target = i
            }
        }
        return target == 0
    }
    
    // O(n ^ 2)
//    func canJump(_ nums: [Int]) -> Bool {
//        guard nums.count > 1 else {
//            return true
//        }
//        var l = 0
//        var r = 0
//        var lastR = -1
//        
//        while r != lastR {
//            lastR = r
//            for i in l...r {
//                if i >= nums.count - 1 {
//                    return true
//                }
//                r = max(r, i + nums[i])
//            }
//            l += 1
//        }
//        return false
//    }
}

