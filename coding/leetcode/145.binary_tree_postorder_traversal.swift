class Solution {
	func postorderTraversal(_ root: TreeNode?) -> [Int] {
		guard let root = root else { return [] }
		var result: [Int] = []
		var inStack: [TreeNode] = [root]
		var outStack: [TreeNode] = []
		while let node = inStack.popLast() {
			outStack.append(node)
			if let left = node.left {
				inStack.append(left)
			}
			if let right = node.right {
				inStack.append(right)
			}
		}
		while let node = outStack.popLast() {
			result.append(node.val)
        }
		return result
    }
}

