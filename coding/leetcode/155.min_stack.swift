// O(1). O(n)
class MinStack {
    var stack: [(Int, Int)] = []
    
    init() {
    }
    
    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append((val, val))
        } else {
            let min = min(val, stack[stack.count-1].1)
            stack.append((val, min))
        }
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        return stack[stack.count-1].0
    }
    
    func getMin() -> Int {
        return stack[stack.count-1].1
    }
}
