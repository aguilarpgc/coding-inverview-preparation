class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        return nums.filter { hasEvenNumberOfDigits($0) }.count
    }
    
    func hasEvenNumberOfDigits(_ num: Int) -> Bool {
        var num = num
        var count = 0
        while num > 0 {
            count += 1
            num /= 10
        }
        return (count & 1) == 0
    }
}
