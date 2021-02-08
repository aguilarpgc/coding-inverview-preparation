class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var seen: Set<Int> = Set()
        
        for val in arr {
            if seen.contains(val << 1) || (val % 2 == 0 && seen.contains(val >> 1)) {
                return true
            }
            seen.insert(val)
        }
        return false
    }
}
