class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var results = [[Int]]()
        var queue = [root]
        
        while !queue.isEmpty {
            let count = queue.count
            var result = [Int]()
            for _ in 0..<count {
                let node = queue.removeFirst()
                result.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            results.append(result)
        }
        return results
    }
}