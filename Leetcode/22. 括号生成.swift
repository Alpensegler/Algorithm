class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        if n == 0 { return [] }
        var left = n - 1, right = n, results = [String](), path = "("
        func dfs() {
            if left == 0 {
                results.append(right == 0 ? path : (path + String(repeating: ")", count: right)))
                return
            }
            if left != 0 {
                left -= 1
                path.append("(")
                dfs()
                left += 1
                path.removeLast()
            }
            if right != 0, left < right {
                right -= 1
                path.append(")")
                dfs()
                right += 1
                path.removeLast()
            }
        }
        dfs()
        return results
    }
}