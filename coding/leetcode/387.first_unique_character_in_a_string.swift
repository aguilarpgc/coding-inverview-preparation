iclass Solution {
    func firstUniqChar(_ s: String) -> Int {
        var ocurrences: [Character: Int] = [:]
        
        for char in s {
            ocurrences[char, default: 0] += 1
        }
        
        var i = 0
        
        for char in s {
            if let count = ocurrences[char], count == 1 {
                return i
            }
            i += 1
        }
        
        return -1
    }
}
