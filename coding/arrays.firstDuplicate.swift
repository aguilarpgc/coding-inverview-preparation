func solution(a: [Int]) -> Int {
    guard !a.isEmpty else {
        return -1
    }
    var hashset: Set<Int> = Set()
    for i in 0..<a.count {
        if hashset.contains(a[i]) {
            return a[i]
        } else {
            hashset.insert(a[i])
        }
    }
    return -1
}

