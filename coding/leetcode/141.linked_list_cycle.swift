class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = slow?.next
        while fast != nil {
            if slow === fast {
                return true
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return false
    }
}
