class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slowPointer = head
        var fastPointer = head
        while let fast = fastPointer, let nextFast = fastPointer?.next {
            slowPointer = slowPointer?.next
            fastPointer = nextFast.next
        }
        return slowPointer
    }
}
