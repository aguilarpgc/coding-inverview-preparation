class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var number = n
        var count = 0
        while number != 0 {
            count += (number & 1 == 0 ? 0 : 1)
            number = number >> 1
        }
        return count
    }
}
