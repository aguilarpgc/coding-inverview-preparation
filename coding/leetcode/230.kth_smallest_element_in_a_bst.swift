// O(n), O(n)
class Solution {
    // Iterative
//    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
//        guard let root = root else {
//            return 0
//        }
//        var stack: [TreeNode] = []
//        var current: TreeNode? = root
//        var n = 0
//        while current != nil || !stack.isEmpty {
//            while let node = current {
//                stack.append(node)
//                current = node.left
//            }
//            let node = stack.removeLast()
//            n += 1
//            if n == k {
//                return node.val
//            }
//            current = node.right
//        }
//        return 0
//    }
    
    // Recursion
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        guard let root = root else {
            return 0
        }
        var result: Int = 0
        var count = k
        inorder(root, &count, result: &result)
        return result
    }
    
    func inorder(_ node: TreeNode?, _ n: inout Int, result: inout Int) -> Bool {
        guard let node = node else {
            return true
        }
        if !inorder(node.left, &n, result: &result) {
            return false
        }
        n -= 1
        if n == 0 {
            result = node.val
            return false
        }
        if !inorder(node.right, &n, result: &result) {
            return false
        }
        return true
    }   
}
