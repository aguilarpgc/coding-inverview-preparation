class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let components = s.split(separator: " ")
        guard pattern.count == components.count else {
            return false
        }
        var patterns: [Character: Int] = [:]
        var words: [String: Int] = [:]
        var i = 0
        for c in pattern {
            let component = String(components[i])
            if patterns[c] == nil {
                patterns[c] = i
            }
            if words[component] == nil {
                words[component] = i
            }
            if patterns[c] != words[component] {
                return false
            }
            i += 1
        }
        
        return true
    }
}
