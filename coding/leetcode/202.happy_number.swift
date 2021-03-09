class Solution {
    func isHappy(_ n: Int) -> Bool {
        var checked: Set<Int> = Set()
        var result = sumSquareDigits(number: n)
        while !checked.contains(result) {
            if result == 1 {
                return true   
            }
            checked.insert(result)
            result = sumSquareDigits(number: result)
        }
        return false 
    }
    
    func sumSquareDigits(number: Int) -> Int {
        var num = number
        var sum = 0
        while num != 0 {
            let remainder = num % 10
            sum += (remainder * remainder)
            num /= 10
        }
        return sum
    }
}
