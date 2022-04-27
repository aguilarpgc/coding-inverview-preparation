// O(n), O(n)
class Solution {
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


