class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var prev = 0
        var steps = k
        for i in 0..<arr.count {
            if (arr[i] - prev) > 1 {
                let rest = arr[i] - prev - 1
                if rest < steps {
                    steps -= rest
                } else {
                    return prev + steps
                }
            }
            prev = arr[i]
        }
        return prev + steps
    }
}
