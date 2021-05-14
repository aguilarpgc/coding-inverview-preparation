class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        guard arr.count > 0 else { return [] }
        var result = Array(repeating: 0, count: arr.count)
        var i = arr.count - 2
        var maximum = arr[i+1]
        while i >= 0 {
            result[i] = maximum
            maximum = max(arr[i], maximum)
            i -= 1
        }
        result[arr.count-1] = -1
        return result
    }
}
