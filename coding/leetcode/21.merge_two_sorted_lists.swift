class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var headList1 = l1
        var headList2 = l2
        var mock: ListNode? = ListNode(-1)
        var head: ListNode? = mock
        
        while let head1 = headList1, let head2 = headList2 {
            if head1.val < head2.val {
                mock?.next = head1
                headList1 = head1.next
            } else {
                mock?.next = head2
                headList2 = head2.next
            }
            mock = mock?.next
        }
        
        if let head1 = headList1 {
            mock?.next = head1
        }
        if let head2 = headList2 {
            mock?.next = head2
        }
        
        return head?.next
    }
}
