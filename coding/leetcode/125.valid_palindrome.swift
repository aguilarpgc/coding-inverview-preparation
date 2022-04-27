// O(n), O(n)
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else {
            return true
        }
        let string = Array(s)
        var i = 0, j = string.count - 1
        let validTokens = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789")
        
        while i < j {
            while !validTokens.contains(string[i]) && i < j {
                i += 1
            }
            while !validTokens.contains(string[j]) && i < j {
                j -= 1
            }
            guard i < j else {
                return true
            }
            guard string[i].lowercased() == string[j].lowercased() else {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}
