class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xor = x ^ y
        var count = 0
        while xor != 0 {
            xor &= (xor - 1)
            count += 1
        }
        return count
    }
}
