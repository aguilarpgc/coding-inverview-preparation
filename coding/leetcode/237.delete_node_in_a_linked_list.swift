
class Solution {
    func deleteNode(_ node: ListNode?) {
        if let val = node?.next?.val{
            node?.val = val
        }
        node?.next = node?.next?.next
    }
}
