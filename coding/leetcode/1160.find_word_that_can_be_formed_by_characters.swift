class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var available = [Character: Int]()
        for character in chars {
            available[character, default: 0] += 1
        }
        
        var countValid = 0
        
        for word in words {
            var options = available
            var valid = true
            for character in word {
                if let option = options[character], option > 0 {
                    options[character] = option - 1
                } else {
                    valid = false
                    break
                }
            }
            if valid {
                countValid += word.count
            }
        }
        
        return countValid
    }
}
