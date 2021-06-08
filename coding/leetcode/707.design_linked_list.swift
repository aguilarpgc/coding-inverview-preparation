class Node {
    let data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}


class MyLinkedList {
    var head: Node?
    
    /** Initialize your data structure here. */
    init() {
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        guard let head = head else { return -1 }
        var counter = 0
        var current: Node? = head
        while let next = current?.next, counter < index {
            counter += 1
            current = next
        }
        guard counter == index else { return -1 }
        return current?.data ?? -1
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let node = Node(val)
        node.next = head
        head = node
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        let node = Node(val)
        guard let head = head else {
            self.head = node
            return
        }
        var current: Node? = head
        while let next = current?.next {
            current = next
        }
        current?.next = node
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        let node = Node(val)
        guard index != 0 else {
            node.next = head
            head = node
            return
        }
        guard let head = head else { return }
        var current: Node? = head
        var prev: Node? = head
        var counter = 0
        while let next = current?.next, counter < index {
            counter += 1
            prev = current
            current = next
        }
        guard counter == index else {
            current?.next = node
            return
        }
        node.next = current
        prev?.next = node
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        guard let head = head else { return }
        guard index != 0 else {
            self.head = head.next
            return
        }
        var current: Node? = head
        var prev: Node? = head
        var counter = 0
        while let next = current?.next, counter < index {
            counter += 1
            prev = current
            current = next
        }
        guard counter == index else {
            return
        }
        prev?.next = current?.next
    }
}



