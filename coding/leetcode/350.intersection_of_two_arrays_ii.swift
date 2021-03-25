class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var countNums: [Int: Int] = [:]
        for num in nums1 {
            countNums[num, default: 0] += 1
        }
        
        var answer: [Int] = []
        
        for num in nums2 {
            guard let prevCount = countNums[num], prevCount > 0 else {
                continue
            }
            answer.append(num)
            countNums[num, default: 0] -= 1
        }
        return answer
    }
}
