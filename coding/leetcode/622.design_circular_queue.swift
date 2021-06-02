class MyCircularQueue {
    private var store: [Int] = []
    private var head = -1
    private var tail = -1
    
    init(_ k: Int) {
        store = Array(repeating: 0, count: k)
    }
    
    func enQueue(_ value: Int) -> Bool {
        guard !isFull() else { return false }
        if head == -1 {
            head = 0
        }
        tail = (tail + 1) % store.count
        store[tail] = value
        return true
    }
    
    func deQueue() -> Bool {
        guard !isEmpty() else { return false }
        if head == tail {
            head = -1
            tail = -1
        } else {
            head = (head + 1) % store.count
        }
        return true
    }
    
    func Front() -> Int {
        guard head != -1 else { return -1 }
        return store[head]
    }
    
    func Rear() -> Int {
        guard tail != -1 else { return -1 }
        return store[tail]
    }
    
    func isEmpty() -> Bool {
        return head == -1
    }
    
    func isFull() -> Bool {
        return ((tail + 1) % store.count) == head
    }
}
