func solution(a: [[Int]]) -> [[Int]] {
    var a = a
    var left = 0, right = a[0].count - 1, top = 0, bottom = a.count - 1
    
    while left < right && top < bottom {
        for i in 0..<(right - left) {
            let aux = a[top][left + i]
            a[top][left + i] = a[bottom - i][left]
            a[bottom - i][left] = a[bottom][right - i]
            a[bottom][right - i] = a[top + i][right]
            a[top + i][right] = aux
        }
        left += 1
        right -= 1
        top += 1
        bottom -= 1
    }
    
    return a
}

