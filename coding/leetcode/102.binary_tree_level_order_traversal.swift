// O(n), O(n)
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        var result: [[Int]] = []
        var queue: [TreeNode] = [root]
        
        while !queue.isEmpty {
            var levels: [Int] = []
            for _ in 0..<queue.count {
                let node = queue.removeFirst() // O(1)
                levels.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            result.append(levels)
        }
        return result
    }
}

