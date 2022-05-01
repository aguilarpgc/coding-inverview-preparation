// O(n), O(n)
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let node = root else {
            return true
        }
        
        return dfs(node, 0).1
    }
    
    func dfs(_ node: TreeNode?, _ depth: Int) -> (Int, Bool) {
        guard let node = node else {
            return (depth, true)
        }
        
        let (left, validLeft) = dfs(node.left, depth + 1)
        if !validLeft {
            return (0, false)
        }
        let (right, validRight) = dfs(node.right, depth + 1)
        if !validRight {
            return (0, false)
        }
        let isValid = abs(left - right) <= 1
        return (max(left, right), isValid)
    }
}
