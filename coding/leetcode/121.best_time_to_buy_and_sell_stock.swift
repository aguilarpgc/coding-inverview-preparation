// O(n), O(1)
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var l = 0, r = 1
        var result = 0
        while r < prices.count {
            if prices[l] < prices[r] {
                result = max(result, prices[r] - prices[l])
            } else {
                l = r
            }
            r += 1
        }
        return result
    }
}
