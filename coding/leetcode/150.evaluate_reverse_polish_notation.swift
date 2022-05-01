// O(n), O(n)
class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []
        
        for token in tokens {
            if let value = getNumber(token) {
                stack.append(value)
            } else {
                let val2 = stack.removeLast()
                let val1 = stack.removeLast()
                let operation = applyOperation(val1, val2, operand: token)
                stack.append(operation)
            }
        }
        
        return stack.removeLast()
    }
    
    func getNumber(_ number: String) -> Int? {
        return Int(number)
    }
    
    func applyOperation(_ val1: Int, _ val2: Int, operand: String) -> Int {
        switch operand {
        case "+": return val1 + val2
        case "-": return val1 - val2
        case "/": return val1 / val2
        case "*": return val1 * val2
        default: return 0
        }
    }
}
