class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var frequency: [Character: Int] = [:]
        for c in s {
            frequency[c, default: 0] += 1
        }
        var answer = frequency.reduce(0) { total, pair in total + (pair.value >> 1) } << 1
        if s.count > answer {
            answer += 1
        }
        return answer
    }
}
