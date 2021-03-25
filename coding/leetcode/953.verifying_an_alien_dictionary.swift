class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        var alphabetIndexes: [Character: Int] = [:]
        for i in 0..<order.count {
            alphabetIndexes[order[i]] = i
        }
        
        for i in 0..<words.count-1 {
            let lenFirst = words[i].count
            let lenSecond = words[i + 1].count
            var j = 0
            var sorted = false
            while j < lenFirst && j < lenSecond {
                let orderFirst = alphabetIndexes[words[i][j], default: 0]
                let orderSecond = alphabetIndexes[words[i + 1][j], default: 0]
                if orderFirst > orderSecond  {
                    return false
                } else if orderFirst < orderSecond  {
                    sorted = true
                    break
                }
                j += 1
            }
            if lenFirst > lenSecond && !sorted {
                return false
            }
        }
        return true
    }
}

extension String {
    subscript(index: Int) -> Character {
        return self[self.index(startIndex, offsetBy: index)]
    }
}
