// O(n), O(n)
class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        var stack: [TreeNode] = [root]
        var result: [Int] = []
        
        while !stack.isEmpty {
            let mostRightNode = stack.last!
            result.append(mostRightNode.val)
            for i in 0..<stack.count {
                let node = stack.removeFirst()
                if let left = node.left {
                    stack.append(left)
                }
                if let right = node.right {
                    stack.append(right)
                }
            }
        }
        return result
    }
}
