class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var steps = 0
        for log in logs {
            switch log {
                case "../":
                    steps -= 1
                    steps = max(steps, 0)
                case "./":
                    break
                default:
                    steps += 1
            }
        }
        return steps
    }
}
