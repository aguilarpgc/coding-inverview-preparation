// O(n), O(n)
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return false
        }
        return dfs(root, Int.min, Int.max)
    }
    
    func dfs(_ node: TreeNode?, _ low: Int, _ high: Int) -> Bool {
        guard let node = node else {
            return true
        }
        guard low < node.val && node.val < high else {
            return false
        }
        return dfs(node.left, low, node.val) && dfs(node.right, node.val, high)
    }
}

