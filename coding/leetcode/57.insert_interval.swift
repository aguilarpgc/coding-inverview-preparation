// O(n), O(n)
class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        
        for i in 0..<intervals.count {
            if newInterval[0] <= intervals[i][1] {
                var next = i
                let newStart = min(intervals[i][0], newInterval[0])
                var newEnd = newInterval[1]
                if newInterval[1] >= intervals[i][0] {
                    newEnd = max(newInterval[1], intervals[i][1])
                    while next < intervals.count && newEnd >= intervals[next][0] {
                        newEnd = max(newEnd, intervals[next][1])
                        next += 1
                    }
                }
                result.append(contentsOf: [[newStart, newEnd]] + intervals[next...])
                return result
            } else {
                result.append(intervals[i])
            }
        }
        
        result.append(newInterval)
        
        return result
    }
}
