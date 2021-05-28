enum Operator: Character {
	case parenthesis = "("
	case brace = "{"
	case bracket = "["
	var trailing: Character {
		switch self {
			case .parenthesis: 
				return ")"
			case .brace: 
				return "}"
			case .bracket: 
				return "]"
		}
	}
}

class Solution {
    func isValid(_ s: String) -> Bool {
        guard (s.count & 1) == 0 else { return false }
        var stack: [Operator] = []
        for char in s {
            if let op = Operator(rawValue: char) {
                stack.append(op)
            } else {
                guard let op = stack.popLast() else {
                    return false
                }
                guard op.trailing == char else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}


