class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        guard n > 1 else { return }
        for r in 0..<n {
            for c in 0..<r {
                (matrix[r][c], matrix[c][r]) = (matrix[c][r], matrix[r][c])
            }
        }
        for r in 0..<n {
            for c in 0..<n / 2 {
                (matrix[r][c], matrix[r][n - c - 1]) = (matrix[r][n - c - 1], matrix[r][c])
            }
        }
    }
}