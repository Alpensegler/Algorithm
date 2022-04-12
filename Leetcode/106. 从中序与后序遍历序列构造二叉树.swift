class Solution {
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        var dict = [Int: Int](minimumCapacity: inorder.count)
        for (offset, element) in inorder.enumerated() {
            dict[element] = offset
        }
        func buildTree(_ inorder: ArraySlice<Int>, _ postorder: ArraySlice<Int>) -> TreeNode? {
            guard let rootValue = postorder.last, let inorderPositon = dict[rootValue] else {
                return nil
            }
            let postorderPosition = postorder.startIndex + inorderPositon - inorder.startIndex
            let left = buildTree(inorder[inorder.startIndex..<inorderPositon], postorder[postorder.startIndex..<postorderPosition])
            let right = buildTree(inorder[inorderPositon + 1..<inorder.endIndex], postorder[postorderPosition..<postorder.endIndex - 1])
            return TreeNode(rootValue, left, right)
        }
        return buildTree(inorder[0..<inorder.count], postorder[0..<postorder.count])
    }
}