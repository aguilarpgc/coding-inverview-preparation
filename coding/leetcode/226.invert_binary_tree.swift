// O(n), O(n)
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        var stack: [TreeNode] = [root]
        
        while let node = stack.popLast() {
            let left: TreeNode? = node.left
            node.left = node.right
            node.right = left
            if let left = node.left {
                stack.append(left)
            }
            if let right = node.right {
                stack.append(right)
            }
        }
        return root
    }
}

