class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var total = 0
        for s in stones {
            if jewels.contains(s) {
                total += 1   
            }
        }
        return total
    }
}
