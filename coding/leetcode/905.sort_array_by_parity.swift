class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        var result = nums
        var i = 0
        var j = nums.count - 1
        while i < j {
            if (result[i] & 1 != 0) && (result[j] & 1 == 0) {
                let aux = result[i]
                result[i] = result[j]
                result[j] = aux
                i += 1
                j -= 1
            } else {
                if result[i] & 1 == 0 { i += 1 }
                if result[j] & 1 != 0 { j -= 1 }   
            }
        }
        return result
    }
}
