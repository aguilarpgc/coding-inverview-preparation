func solution(l: ListNode<Int>?, k: Int) -> ListNode<Int>? {
    guard let head = l else {
        return nil
    }
    
    let root = ListNode(k * -1)
    root.next = head
    var prev: ListNode? = root
    var current = prev?.next
    
    while let node = current {
        if node.value == k {
            prev?.next = node.next
        } else {
            prev = node
        }
        current = prev?.next
    }
    
    return root.next
}

