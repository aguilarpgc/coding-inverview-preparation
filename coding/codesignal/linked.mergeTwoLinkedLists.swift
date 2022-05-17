func solution(l1: ListNode<Int>?, l2: ListNode<Int>?) -> ListNode<Int>? {
    var head = ListNode(0)
    var result: ListNode? = head
    var current1 = l1
    var current2 = l2

    while let node1 = current1, let node2 = current2 {
        if node1.value < node2.value {
            result?.next = node1
            current1 = node1.next
        } else {
            result?.next = node2
            current2 = node2.next
        }
        result = result?.next
    }
    
    if current1 != nil {
        result?.next = current1
    }
    
    if current2 != nil {
        result?.next = current2
    }
    
    return head.next
}

