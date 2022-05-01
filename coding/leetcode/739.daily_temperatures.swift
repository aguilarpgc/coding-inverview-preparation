// O(n), O(n)
class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack: [Int] = []
        var result = Array(repeating: 0, count: temperatures.count)
        
        for i in 0..<temperatures.count {
            while let last = stack.last, temperatures[last] < temperatures[i] {
                stack.popLast()
                result[last] = i - last
            }
            stack.append(i)
        }
        return result
    }
}

