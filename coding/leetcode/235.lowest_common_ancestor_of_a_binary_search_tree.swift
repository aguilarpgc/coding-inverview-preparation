// O(n), O(n)
class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root, let first = p, let second = q else {
            return nil
        }
        var pathToP: [TreeNode] = []
        var pathToQ: [TreeNode] = []
        bst(root, target: first.val, path: &pathToP)
        bst(root, target: second.val, path: &pathToQ)

        var minIndex = min(pathToP.count, pathToQ.count) - 1
        while minIndex >= 0 {
            if pathToP[minIndex] === pathToQ[minIndex] {
                return pathToP[minIndex]
            }
            minIndex -= 1
        }
        return root
    }

    func bst(_ root: TreeNode, target: Int, path: inout [TreeNode]) {
        var current: TreeNode? = root
        while let node = current {
            path.append(node)
            if node.val == target {
                return
            } else if node.val < target {
                current = node.right
            } else {
                current = node.left
            }
        }
    }
    /*
     func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
             guard let root = root, let first = p, let second = q else {
                 return nil
             }
             var current: TreeNode? = root
             while let node = current {
                 if node.val < first.val && node.val < second.val {
                     current = node.right
                 } else if node.val > first.val && node.val > second.val {
                     current = node.left
                 } else {
                     return current
                 }
             }
             return current
         }
     */
}

