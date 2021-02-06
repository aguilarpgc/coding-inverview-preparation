class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var count = 0
        var i = 0
        while i < flowerbed.count {
            if flowerbed[i] == 0 && (i == 0 || flowerbed[i-1] == 0) && (i == flowerbed.count - 1 || flowerbed[i+1] == 0) {
                count += 1
                i += 2
                continue
            }
            i += 1
        }
        return count >= n
    }
}
