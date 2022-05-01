// O(max(m,n)), O(1)
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var root = ListNode(0)
        var current: ListNode? = root
        var counter = 0
        var node1 = l1
        var node2 = l2
        while node1 != nil || node2 != nil || counter != 0 {
            var val1 = 0
            if let current1 = node1 {
                val1 = current1.val
                node1 = current1.next
            }
            var val2 = 0
            if let current2 = node2 {
                val2 = current2.val
                node2 = current2.next
            }
            let sum = val1 + val2 + counter
            let val = sum % 10
            counter = sum / 10
            current?.next = ListNode(val)
            current = current?.next
        }
        return root.next
    }
}

