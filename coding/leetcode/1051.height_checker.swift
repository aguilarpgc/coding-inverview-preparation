class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var expected = heights.sorted()
        var count = 0
        for i in 0..<heights.count where expected[i] != heights[i] {
            count += 1
        }
        return count
    }
}
