// O(n), O(n)
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 1 else {
            return s.count
        }
        var l = 0, r = 0, result = 0
        var hashset: Set<Character> = Set()
        let s = Array(s)
        
        while r < s.count {
            if hashset.contains(s[r]) {
                hashset.remove(s[l])
                l += 1
            } else {
                hashset.insert(s[r])
                result = max(result, hashset.count)
                r += 1
            }
        }
        
        return result
    }
}

