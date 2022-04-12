class Solution {
    func maxPathSum(_ root: TreeNode?) -> Int {
        var maxSum = Int.min
        func dfs(root: TreeNode?) -> Int {
            guard let root = root else { return 0 }
            let left = dfs(root: root.left)
            let right = dfs(root: root.right)
            
            maxSum = max(root.val + left + right, maxSum)
            
            return max(max(left, right) + root.val, 0)
        }
        _ = dfs(root: root)
        return maxSum
    }
}