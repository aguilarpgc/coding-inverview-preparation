class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var ocurrences: [Int: Int] = [:]
        
        for number in arr {
            ocurrences[number, default: 0] += 1
        }
        
        var numbers: Set<Int> = Set()
        
        for (key, value) in ocurrences {
            let (isNew, _) = numbers.insert(value)
            if !isNew {
                return false
            }
        }
        
        return true
    }
}
