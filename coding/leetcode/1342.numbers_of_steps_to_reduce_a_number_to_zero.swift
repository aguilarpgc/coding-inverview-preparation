class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        guard num > 0 else {
            return 0
        }
        var num = num 
        var count = 0
        while num > 0 {
            count += (num & 1 != 0 ? 2 : 1)
            num >>= 1
        }
        return count - 1
    }
}
