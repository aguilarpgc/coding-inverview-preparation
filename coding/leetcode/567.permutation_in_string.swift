// O(s2), O(s1)
class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s2.count >= s1.count else {
            return false
        }
        
        var frequency: [Character: Int] = [:]
        
        for token in s1 {
            frequency[token, default: 0] += 1
        }
        
        let string = Array(s2)
        var sliceFreq: [Character: Int] = [:]
        var r = 0
        var currentMatch = 0
        
        while r < string.count {
            if let match = frequency[string[r]] {
                let count = (sliceFreq[string[r]] ?? 0) + 1
                if count == match {
                    currentMatch += 1
                }
                sliceFreq[string[r]] = count
            }
            if r + 1 >= s1.count {
                let l = r - s1.count
                if l >= 0 && frequency[string[l]] != nil  {
                    let token = string[l]
                    let count = sliceFreq[token] ?? 0
                    if count > 0 {
                        sliceFreq[token] = count - 1
                    }
                    if count == frequency[token]! {
                        currentMatch -= 1
                    }
                }
            }
            if currentMatch == frequency.count {
                return true
            }
            r += 1
        }
        
        return false
    }
}

