// O(log n + log m), O(1)
class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var l = 0
        var r = matrix.count - 1
        while l <= r {
            let mid = (l + r) / 2
            let pivot = matrix[mid][0]
            if target == pivot {
                return true
            } else if target < pivot {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        if r < 0 {
            return false
        }
        
        let row = r
        l = 0
        r = matrix[0].count - 1
        while l <= r {
            let mid = (l + r) / 2
            if matrix[row][mid] == target {
                return true
            } else if matrix[row][mid] < target {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }
        return false
    }
}

