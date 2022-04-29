// O(n), O(n)
class Solution {
    func maxPathSum(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var result = Int.min
        dfs(root, &result)
        return result
    }
    
    func dfs(_ node: TreeNode?, _ result: inout Int) -> Int {
        guard let node = node else {
            return 0
        }
        let left = dfs(node.left, &result)
        let right = dfs(node.right, &result)
        let sumPath = node.val + max(0, left) + max(0, right)
        
        result = max(result, sumPath)
        
        return node.val + max(0, max(left, right))
    }
}
