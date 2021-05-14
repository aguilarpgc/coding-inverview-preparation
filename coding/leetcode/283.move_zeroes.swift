class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 1 else { return }
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                if i != j {
                    let aux = nums[j]
                    nums[j] = nums[i]
                    nums[i] = aux
                }
                j += 1
            }
        }
    }
}
