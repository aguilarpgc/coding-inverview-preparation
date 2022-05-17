func solution(a: ListNode<Int>?, b: ListNode<Int>?) -> ListNode<Int>? {
    var prev1: ListNode<Int>?
    var current1: ListNode<Int>? = a
    
    while let node = current1 {
        let next = node.next
        node.next = prev1
        prev1 = node
        current1 = next
    }
    
    var prev2: ListNode<Int>?
    var current2: ListNode<Int>? = b
    
    while let node = current2 {
        let next = node.next
        node.next = prev2
        prev2 = node
        current2 = next
    }
    
    var carrier = 0
    var head = ListNode(0)
    var current: ListNode<Int>? = head
    
    while prev1 != nil || prev2 != nil || carrier != 0 {
        let val1 = prev1?.value ?? 0
        let val2 = prev2?.value ?? 0
        let sum = val1 + val2 + carrier
        carrier = sum / 10000
        let realSum = sum % 10000
        current?.next = ListNode(realSum)
        current = current?.next
        prev1 = prev1?.next
        prev2 = prev2?.next
    }
    
    var prev: ListNode<Int>?
    var result: ListNode<Int>? = head.next
    
    while let node = result {
        let next = node.next
        node.next = prev
        prev = node
        result = next
    }
    return prev
}

