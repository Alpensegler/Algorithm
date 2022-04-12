class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let node = root else { return nil }
        (node.left, node.right) = (node.right, node.left)
        invertTree(node.left)
        invertTree(node.right)
        return node
    }
}