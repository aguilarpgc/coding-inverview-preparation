// O(n), O(n)
class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
    /*
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let node = root else {
            return 0
        }
        var stack: [(TreeNode, Int)] = [(node, 1)]
        var result = 0
        while !stack.isEmpty {
            let (last, depth) = stack.popLast()!
            result = max(result, depth)
            if let left = last.left {
                stack.append((left, depth + 1))
            }
            if let right = last.right {
                stack.append((right, depth + 1))
            }
        }
        return result
    }
    */
}

