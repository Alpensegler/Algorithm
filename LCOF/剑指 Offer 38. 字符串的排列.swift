class Solution {
    func permutation(_ s: String) -> [String] {
        if s.isEmpty { return [] }
        let s = s.sorted()
        var visited = Array(repeating: false, count: s.count)
        var results = [String](), count = 0, path = String()
        func backtrack() {
            if count == s.count {
                results.append(path)
                return
            }
            for i in s.indices where !visited[i] {
                if i > 0, s[i] == s[i - 1], visited[i - 1] { continue }
                path.append(s[i])
                visited[i] = true
                count += 1
                backtrack()
                path.removeLast()
                visited[i] = false
                count -= 1
            }
        }
        backtrack()
        return results
    }
}