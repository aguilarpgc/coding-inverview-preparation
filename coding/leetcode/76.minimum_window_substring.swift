// O(s), O(t)
class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        guard s.count >= t.count else {
            return ""
        }
        var frequency: [Character: Int] = [:]
        for token in t {
            frequency[token, default: 0] += 1
        }
        let string = Array(s)
        var result = ("", Int.max)
        
        var current: [Character: Int] = [:]
        let tokenTotal = frequency.count
        var currentTotal = 0
        
        var l = 0
        
        for r in 0..<string.count {
            let endToken = string[r]
            if let tokenCount = frequency[endToken]  {
                current[endToken, default: 0] += 1
                let currentCount = current[endToken]!
                if currentCount == tokenCount {
                    currentTotal += 1
                }
            }
            while currentTotal == tokenTotal {
                let startToken = string[l]
                if let tokenCount = frequency[startToken],
                   let currentCount = current[startToken],
                   currentCount > 0 {
                    current[startToken] = currentCount - 1
                    if currentCount == tokenCount {
                        currentTotal -= 1
                    }
                }
                if (r - l + 1) < result.1 {
                    result = (String(string[l...r]), r - l + 1)
                }
                l += 1
            }
        }
        return result.0
    }
}

