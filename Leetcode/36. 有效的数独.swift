class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowDict = Array(repeating: Array(repeating: false, count: 9), count: 9)
        var columnDict = Array(repeating: Array(repeating: false, count: 9), count: 9)
        var subBoardDict = Array(repeating: Array(repeating: Array(repeating: false, count: 9), count: 3), count: 3)
        for row in 0..<9 {
            for column in 0..<9 {
                guard let numValue = board[row][column].wholeNumberValue else { continue }
                let value = numValue - 1, subBoardRow = row / 3, subBoardColumn = column / 3
                if rowDict[row][value] || columnDict[column][value] ||
                    subBoardDict[subBoardRow][subBoardColumn][value] { return false }
                rowDict[row][value] = true
                columnDict[column][value] = true
                subBoardDict[subBoardRow][subBoardColumn][value] = true
            }
        }
        return true
    }
}