class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 1 else {  return strs.first ?? "" }
        var toIndex = 0
        while true {
            guard toIndex < strs[0].count else {
                return strs[0].substring(to: toIndex - 1)
            }
            let currentChar = strs[0][at: toIndex]
            for i in 1..<strs.count {
                guard toIndex < strs[i].count,
                      currentChar == strs[i][at: toIndex] else {
                    return strs[0].substring(to: toIndex - 1)
                }
            }
            toIndex += 1
        }
    }
}

extension String {
    subscript(at index: Int) -> Character {
        return self[self.index(startIndex, offsetBy: index)]
    }
    func substring(to: Int) -> String {
        guard to >= 0 && to < count else {
            return ""
        }
        return String(self[...index(startIndex, offsetBy: to)])
    }
}

