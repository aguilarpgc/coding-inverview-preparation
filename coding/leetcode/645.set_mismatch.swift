class Solution {
    func findErrorNums(_ numsInmutable: [Int]) -> [Int] {
        var nums = numsInmutable
        var repeated = -1, missing = -1
        
        for i in 0..<nums.count {
            if nums[abs(nums[i]) - 1] < 0 {
                repeated = abs(nums[i])
            } else {
                nums[abs(nums[i]) - 1] *= -1
            }
        }
        
        for i in 0..<nums.count {
            if nums[i] > 0 {
                missing = i + 1
                break
            }
        }
        
        return [repeated, missing]
    }
}
