// O(n), O(1)
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current: ListNode? = head
        var prev: ListNode?
        while let node = current {
            let next = node.next
            node.next = prev
            prev = node
            current = next
        }
        return prev
    }
}
