class Solution {
    // O(n), O(n)
    func longestConsecutive(_ nums: [Int]) -> Int {
        let hashset = Set(nums)
        var result = 0
        for num in nums {
            if !hashset.contains(num - 1) {
                var current = num
                var counter = 0
                while hashset.contains(current) {
                    counter += 1
                    current += 1
                }
                result = max(result, counter)
            }
        }
        return result
    }
    
    // O(nlogn), O(n)
    /*
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        var result = 1
        var count = 1
        let nums = nums.sorted()
        
        for i in 1..<nums.count {
            if nums[i] - nums[i-1] == 1 {
                count += 1
                result = max(result, count)
            } else if  nums[i] != nums[i-1] {
                count = 1
            }
        }
        
        return result
    }*/
}
