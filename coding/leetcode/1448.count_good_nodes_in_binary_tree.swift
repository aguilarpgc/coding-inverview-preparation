// O(n), O(n)
class Solution {
    func goodNodes(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var result = 0
        dfs(root, Int.min, &result)
        return result
    }
    
    func dfs(_ node: TreeNode?, _ currentMax: Int, _ result: inout Int) {
        guard let node = node else {
            return
        }
        
        if node.val >= currentMax {
            result += 1
        }
        
        dfs(node.left, max(node.val, currentMax), &result)
        dfs(node.right, max(node.val, currentMax), &result)
    }
}

