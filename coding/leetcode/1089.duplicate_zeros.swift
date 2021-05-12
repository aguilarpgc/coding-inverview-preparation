class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        guard !arr.isEmpty else { return }
        var index = 0, count = 0
        var lastOneZero = false
        
        for i in 0..<arr.count {
            if arr[i] == 0 {
                count += 1
            } 
            count += 1
            if count >= arr.count {
                index = i
                // Check if we have to duplicate the last zero or not
                lastOneZero = (count > arr.count) 
                break
            }
        }
        
        var j = index
        var i = arr.count - 1
        while j >= 0 {
            if arr[j] == 0 {
                if lastOneZero {
                    lastOneZero = false
                } else {
                    arr[i] = 0
                    i -= 1
                }
            }
            arr[i] = arr[j]
            j -= 1
            i -= 1 
        }
    }
}
