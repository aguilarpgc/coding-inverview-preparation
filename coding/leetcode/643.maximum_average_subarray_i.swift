class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var maxKSum = 0
        for i in 0..<k {
            maxKSum += nums[i]
        }
        var tempSum = maxKSum
        var j = k
        while j < nums.count {
            tempSum += nums[j] - nums[j - k]
            if tempSum > maxKSum {
                maxKSum = tempSum
            }
            j += 1
        }
        return Double(maxKSum) / Double(k)
    }
}
