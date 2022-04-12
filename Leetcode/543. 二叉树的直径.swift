class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var result = 0
        func dfs(node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            let leftCount = dfs(node: node.left)
            let rightCount = dfs(node: node.right)
            result = max(result, leftCount + rightCount)
            return max(leftCount, rightCount) + 1
        }
        _ = dfs(node: root)
        return result
    }
}