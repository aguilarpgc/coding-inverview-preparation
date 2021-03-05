class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var set1: Set<Int> = Set()
        var set2: Set<Int> = Set()
        
        for num in nums1 {
            set1.insert(num)
        }
        for num in nums2 where set1.contains(num) {
            set2.insert(num)
        }
        
        return Array(set2)
    }
}
