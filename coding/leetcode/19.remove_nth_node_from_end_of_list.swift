// O(n), O(1)
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        var newHead = ListNode(0, head)
        var current: ListNode? = newHead
        var i = 0
        while i < n {
            current = current?.next
            i += 1
        }
        
        var prev: ListNode? = newHead
        while let next = current?.next {
            current = next
            prev = prev?.next
        }
        
        prev?.next = prev?.next?.next
        
        return newHead.next
    }
}
