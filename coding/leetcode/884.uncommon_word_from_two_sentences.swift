class Solution {
    func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
        var occurences: [String: Int] = [:]
        for word in A.components(separatedBy: " ") {
            occurences[word, default: 0] += 1
        }
        for word in B.components(separatedBy: " ") {
            occurences[word, default: 0] += 1
        }
        return occurences.filter { $0.1 == 1 }.map { $0.0 }
    }
}
