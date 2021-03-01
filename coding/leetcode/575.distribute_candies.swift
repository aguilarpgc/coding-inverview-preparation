class Solution {
    func distributeCandies(_ candyType: [Int]) -> Int {
        return min(Set(candyType).count, candyType.count / 2)
    }
}
