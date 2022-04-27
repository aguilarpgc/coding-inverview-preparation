// O(m+n), O(1)
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var list1: ListNode? = list1
        var list2: ListNode? = list2
        var newCurrent: ListNode? = ListNode(0, nil)
        let newHead: ListNode? = newCurrent
        
        while let current1 = list1, let current2 = list2 {
            if current1.val < current2.val {
                newCurrent?.next = current1
                list1 = list1?.next
            } else {
                newCurrent?.next = current2
                list2 = list2?.next
            }
            newCurrent = newCurrent?.next
        }
        if let current1 = list1 {
            newCurrent?.next = current1
        }
        if let current2 = list2 {
            newCurrent?.next = current2
        }
        return newHead?.next
    }
}

