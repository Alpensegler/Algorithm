class Solution {
    var columns = Set<Int>()
    var diagonals1 = Set<Int>()
    var diagonals2 = Set<Int>()
    
    func solveNQueens(_ n: Int) -> [[String]] {
        var queens = Array(repeating: -1, count: n)
        var results = [[String]]()
        func backtrack(row: Int) {
            if row == n {
                results.append((0..<n).map { row in
                    var array = Array(repeating: ".", count: n)
                    array[queens[row]] = "Q"
                    return array.joined()
                })
                return
            }
            for column in 0..<n where !columns.contains(column) {
                let diagonal = row - column
                if diagonals1.contains(diagonal) { continue }
                let diagnal2 = row + column
                if diagonals2.contains(diagnal2) { continue }
                queens[row] = column
                columns.insert(column)
                diagonals1.insert(diagonal)
                diagonals2.insert(diagnal2)
                backtrack(row: row + 1)
                queens[row] = -1
                columns.remove(column)
                diagonals1.remove(diagonal)
                diagonals2.remove(diagnal2)
            }
        }
        backtrack(row: 0)
        return results
    }
}