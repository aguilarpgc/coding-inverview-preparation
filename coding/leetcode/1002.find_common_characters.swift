class Solution {
    func commonChars(_ A: [String]) -> [String] {
        guard !A.isEmpty else { return [] }
        
        var commonOcurrences: [Character: Int] = [:]
        for character in A[0] {
            commonOcurrences[character, default: 0] += 1
        }
        
        let limit = A.count
        for i in 1..<limit {
            var ocurrences: [Character: Int] = [:]
            for character in A[i] {
                guard let commonOcurrence = commonOcurrences[character] else {
                    continue
                }
                let ocurrence = ocurrences[character, default: 0]
                guard ocurrence < commonOcurrence else {
                    continue
                }
                ocurrences[character] = ocurrence + 1
            }
            for (character, commonCount) in commonOcurrences {
                if let count = ocurrences[character] {
                    commonOcurrences[character] = min(count, commonCount)
                } else {
                    commonOcurrences[character] = nil
                }
            }
        }
        
        var letters = ""
        for (character, count) in commonOcurrences {
            letters.append(String(repeating: character, count: count))
        }
        return letters.map { String($0) }
    }
}
