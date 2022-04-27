// O(n), O(n)
class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else {
            return false
        }
        var stack: [Character] = []
        let brackets: [Character: Character] = ["{": "}", "[": "]", "(": ")"]
        
        for token in s {
            guard !brackets.keys.contains(token) else {
                stack.append(token)
                continue
            }
            guard let lastToken = stack.popLast(),
                  let closing = brackets[lastToken],
                  closing == token else {
                      return false
                  }
        }
        
        return stack.isEmpty
    }
}


