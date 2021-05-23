class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        var result: [Int] = []
        var current: TreeNode? = root
        var stack: [TreeNode] = []
        
        while current != nil || !stack.isEmpty {
            if let node = current {
                stack.append(node)
                current = node.left
            } else {
                let node = stack.popLast()
                if let val = node?.val {
                    result.append(val)
                }
                current = node?.right
            }
        }
        
        return result
    }
}
