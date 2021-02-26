class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var ocurrences: [Character: Int] = [:]
        
        for (charS, charT) in zip(s, t) {
            ocurrences[charS, default: 0] += 1
            ocurrences[charT, default: 0] -= 1
        }
        
        for value in ocurrences.values where value != 0 {
            return false
        }
        
        return true
    }
}
