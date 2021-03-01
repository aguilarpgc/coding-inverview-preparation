class Solution {
    func findWords(_ words: [String]) -> [String] {
        var index: [Character: Int] = [:]
        index["q"] = 1
        index["w"] = 1
        index["e"] = 1
        index["r"] = 1
        index["t"] = 1
        index["y"] = 1
        index["u"] = 1
        index["i"] = 1
        index["o"] = 1
        index["p"] = 1
        index["a"] = 2
        index["s"] = 2
        index["d"] = 2
        index["f"] = 2
        index["g"] = 2
        index["h"] = 2
        index["j"] = 2
        index["k"] = 2
        index["l"] = 2
        index["z"] = 3
        index["x"] = 3
        index["c"] = 3
        index["v"] = 3
        index["b"] = 3
        index["n"] = 3
        index["m"] = 3

        return words.filter { word in
            var currentIndex: Int?
            for character in word.lowercased() {
                guard let current = currentIndex else {
                    currentIndex = index[character]
                    continue
                }
                guard let index = index[character] else {
                    continue
                }
                guard index == current else {
                    return false
                }
            }
            return true
        }
    }
}
