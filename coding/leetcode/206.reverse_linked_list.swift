class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head
        var prev: ListNode?
        var next: ListNode?
        while let node = current {
            next = node.next
            current?.next = prev
            prev = current
            current = next
        }
        return prev
    }
}
