class Solution {
    // O(n), O(1)
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        var current: ListNode? = head
        var current1 = ListNode()
        var current2 = ListNode()
        let newHead1 = current1
        let newHead2 = current2
        while let node = current {
            if node.val < x {
                current1.next = node
                current1 = node
            } else {
                current2.next = node
                current2 = node
            }
            current = node.next
        }
        current2.next = nil
        current1.next = newHead2.next
        return newHead1.next
    }
}

