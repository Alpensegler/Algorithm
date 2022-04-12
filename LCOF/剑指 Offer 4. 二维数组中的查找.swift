class Solution {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard let count = matrix.first?.count else { return false }
        var r = matrix.count - 1, c = 0
        while r >= 0, c < count {
            if matrix[r][c] == target { return true }
            if matrix[r][c] < target {
                c += 1
            } else {
                r -= 1
            }
        }
        return false
    }
}