func solution(s: String) -> Character {
    var freq: [Character: Int] = [:]
    for c in s {
        freq[c, default: 0] += 1
    }
    
    for c in s {
        if let count = freq[c], count == 1 {
            return c
        }
    }
    
    return "_"
}

