class Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        var n = n
        while n > 0 {
            if (n & 1) ^ ((n >> 1) & 1) == 0 {
                return false
            }
            n >>= 1
        }
        return true
    }
}
