class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var temp = head
        
        while let current = temp, let next = temp?.next {
            if current.val == next.val {
                temp?.next = next.next
            } else {
                temp = next
            }
        }
        
        return head
    }
}
