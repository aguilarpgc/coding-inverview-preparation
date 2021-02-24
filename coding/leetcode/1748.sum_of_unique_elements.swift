class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var ocurrences: [Int: Int] = [:]
        
        for value in nums {
            if let exist = ocurrences[value] {
                ocurrences[value] = 0
            } else {
                ocurrences[value] = value
            }
        }
        
        return ocurrences.values.reduce(0) {
            return $0 + $1
        }
    }
}
