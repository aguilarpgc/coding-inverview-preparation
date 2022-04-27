// O(nlogn), O(n)
func canAttendMeetings(_ intervals: Array<Interval>) -> Bool {
    guard intervals.count > 1 else {
        return true
    }
    var sorted = intervals.sorted { $0.start < $1.start }
    for i in 1..<sorted.count {
        if sorted[i-1].end > sorted[i].start {
            return false
        }    
    }
    return true
}

