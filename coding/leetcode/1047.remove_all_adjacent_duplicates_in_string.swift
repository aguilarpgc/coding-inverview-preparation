class Solution {
    func removeDuplicates(_ S: String) -> String {
        var stack: [Character] = []
        for c in S {
            if let last = stack.last, last == c {
                stack.popLast()
            } else {
                stack.append(c)
            }
        }
        return String(stack)
    }
}
