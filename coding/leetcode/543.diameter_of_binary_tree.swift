// O(n), O(n)
class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let node = root else {
            return 0
        }
        var result = Int.min
        dfs(node, &result)
        return result
    }
    
    func dfs(_ node: TreeNode?, _ result: inout Int) -> Int {
        guard let node = node else {
            return 0
        }
        let left = dfs(node.left, &result)
        let right = dfs(node.right, &result)
        result = max(result, left + right)
        return 1 + max(left, right)
    }
}

