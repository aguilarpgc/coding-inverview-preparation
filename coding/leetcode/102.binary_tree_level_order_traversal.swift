class Solution {
	func levelOrder(_ root: TreeNode?) -> [[Int]] {
		guard let root = root else { return [] }
		var result: [[Int]] = []
		var queue: [TreeNode] = [root]
		while !queue.isEmpty {
			var valueslevel: [Int] = []
			valueslevel.reserveCapacity(queue.count)
			for _ in 0..<queue.count {
				let treeNode = queue.removeFirst()
				valueslevel.append(treeNode.val) // O(1)
				if let left = treeNode.left {
					queue.append(left)
				}
				if let right = treeNode.right {
					queue.append(right)
				}
			}
			result.append(valueslevel)
        }
		return result
    }
}
