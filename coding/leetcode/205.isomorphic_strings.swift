class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        var sIndex: [Character: Int] = [:]
        var tIndex: [Character: Int] = [:]
        
        var i = 0
        for (charS, chatT) in zip(s,t) {
            if sIndex[charS] == nil {
                sIndex[charS] = i
            }
            if tIndex[chatT] == nil {
                tIndex[chatT] = i
            }
            if sIndex[charS] != tIndex[chatT] {
                return false
            }
            i += 1
        }
        return true
    }
}
