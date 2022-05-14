func solution(l: ListNode<Int>?) -> Bool {
    guard let root = l else {
        return true
    }
    var slow: ListNode? = root
    var fast = slow?.next
    while let nextFast = fast?.next {
        slow = slow?.next
        fast = nextFast.next
    }
    
    var prev: ListNode<Int>?
    var current: ListNode? = slow
    while let node = current {
        var next = node.next
        node.next = prev
        prev = node
        current = next
    }
    
    var first: ListNode? = root
    var second: ListNode? = prev
    
    while let firstNode = first, let secondNode = second {
        guard firstNode.value == secondNode.value else {
            return false
        }
        first = firstNode.next
        second = secondNode.next
    }
    
    return true
}

