// O(nlogn), O(n)
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else {
            return intervals
        }
        
        var intervals = intervals.sorted { $0[0] < $1[0] }
        var result: [[Int]] = [intervals[0]]
        for i in 1..<intervals.count {
            let lastIndex = result.count - 1
            if result[lastIndex][1] >= intervals[i][0] {
                let lastEnd = result[lastIndex][1]
                result[lastIndex][1] = max(lastEnd, intervals[i][1])
            } else {
                result.append(intervals[i])
            }
        }
        
        return result
    }
}

