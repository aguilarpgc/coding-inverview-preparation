class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var result = 0
        var temp = head
        while let current = temp {
            result *= 2
            if current.val == 1 {
                result += 1
            }
            temp = current.next
        }
        return result
    }
}
