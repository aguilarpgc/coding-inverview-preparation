class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result: [Int] = []
        var pivot = 1
        for j in stride(from: digits.count - 1, through: 0, by: -1) {
            let sum = digits[j] + pivot
            if sum >= 10 {
                result.append(0)
                pivot = 1
            } else {
                result.append(sum)
                pivot = 0
            }
        }
        if pivot == 1 {
            result.append(1)
        }
        return result.reversed()
    }
}
