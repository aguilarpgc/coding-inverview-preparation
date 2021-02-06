class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        let numsSorted = nums.sorted { $0 > $1 }
        var c = 1
        for i in 1..<numsSorted.count {
            if numsSorted[i] != numsSorted[i - 1] {
                c += 1
            }
            if c == 3 {
                return numsSorted[i]
            }
        }
        return numsSorted[0]
    }
}
