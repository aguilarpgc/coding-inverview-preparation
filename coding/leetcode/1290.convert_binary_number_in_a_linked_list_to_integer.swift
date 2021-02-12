class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var result = 0
        var temp = head
        while let current = temp {
	    result = result << 1 | current.val
            temp = current.next
        }
        return result
    }
}
