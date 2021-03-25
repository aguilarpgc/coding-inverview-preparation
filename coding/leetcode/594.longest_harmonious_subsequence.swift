class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var countNum: [Int: Int] = [:]
        for num in nums {
            countNum[num, default: 0] += 1
        }
        
        var answer = 0
        for (key, countCurrent) in countNum {
            guard let countNext = countNum[key + 1] else { continue }
            answer = max(answer, countCurrent + countNext)
        }
        
        return answer
    }
}
