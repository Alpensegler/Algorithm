class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard let first = grid.first, !first.isEmpty else { return 0 }
        let rowIndices = grid.indices
        let columnIndices = first.indices
        var grid = grid
        
        func dfs(r: Int, c: Int) {
            guard rowIndices.contains(r), columnIndices.contains(c), grid[r][c] == "1" else { return }
            grid[r][c] = "0"
            dfs(r: r, c: c + 1)
            dfs(r: r, c: c - 1)
            dfs(r: r + 1, c: c)
            dfs(r: r - 1, c: c)
        }
        
        var count = 0
        for r in rowIndices {
            for c in columnIndices where grid[r][c] == "1" {
                dfs(r: r, c: c)
                count += 1
            }
        }
        return count
    }
}