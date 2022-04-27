// O(n), O(n)
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        var alphabet: [Character: Int] = [:]
        
        let arrayS = Array(s)
        let arrayT = Array(t)
        
        for i in 0..<arrayS.count {
            alphabet[arrayS[i], default: 0] += 1
            alphabet[arrayT[i], default: 0] -= 1
        }
        
        return !alphabet.values.contains { $0 != 0  }
    }
}
