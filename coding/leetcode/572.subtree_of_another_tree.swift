// O(n), O(n)
class Solution {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root = root, let subRoot = subRoot else {
            return false
        }
        var stack: [TreeNode] = [root]
        while !stack.isEmpty {
            let node = stack.popLast()!
            if isSameTree(node, subRoot) {
                return true
            }
            if let left = node.left {
                stack.append(left)
            }
            if let right = node.right {
                stack.append(right)
            }
        }
        return false
    }
    
    func isSameTree(_ first: TreeNode?, _ second: TreeNode?) -> Bool {
        if first == nil && second == nil {
            return true
        }
        guard let first = first, let second = second,
              first.val == second.val else {
                  return false
              }
        return isSameTree(first.left, second.left) && isSameTree(first.right, second.right)
    }
}

