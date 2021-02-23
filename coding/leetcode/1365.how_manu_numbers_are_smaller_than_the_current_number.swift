class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var numsSorted = nums.sorted()
        var smallesCount: [Int: Int] = [:]
        
        smallesCount[numsSorted[0]] = 0
        
        for i in 1..<numsSorted.count {
            guard numsSorted[i] != numsSorted[i-1] else {
                continue
            }
            smallesCount[numsSorted[i]] = i
        }
        
        return nums.map {
            smallesCount[$0] ?? 0
        }
    }
}
