/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var prev: ListNode? = ListNode(-1, head)
        var newHead = prev
        var current = head
        while let node = current {
            if node.val == val {
                prev?.next = node.next
            } else {
                prev = node
            }
            current = node.next
        }
        return newHead?.next
    }
}
