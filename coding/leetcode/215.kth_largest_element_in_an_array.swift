class Solution {
    // O(n)/O(n^2), O(n)
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        var low = 0, high = nums.count - 1
        var indexPivot = indexPartition(&nums, low, high)
        let indexGoal = nums.count - k
        while indexPivot != indexGoal {
            if indexPivot < indexGoal {
                low = indexPivot + 1
            } else {
                high = indexPivot - 1
            }
            indexPivot = indexPartition(&nums, low, high)
        }
        return nums[indexPivot]
    }
    
    func indexPartition(_ nums: inout [Int], _ low: Int, _ high: Int) -> Int {
        let pivot = nums[high]
        var indexToPlace = low - 1
        
        for i in low..<high {
            if nums[i] < pivot {
                indexToPlace += 1
                let temp = nums[indexToPlace]
                nums[indexToPlace] = nums[i]
                nums[i] = temp
            }
        }
        indexToPlace += 1
        
        nums[high] = nums[indexToPlace]
        nums[indexToPlace] = pivot
        
        return indexToPlace
    }
    
    // O(n lg n), O(n)
    // func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    //     return nums.sorted()[nums.count - k]
    // }
}
