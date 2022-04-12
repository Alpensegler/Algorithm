class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }
        var rows = Array(repeating: "", count: numRows), row = 0, reverting = false
        for char in s {
            rows[row].append(char)
            switch (reverting, row) {
            case (false, numRows - 1):
                reverting = true
                row -= 1
            case (false, _):
                row += 1
            case (true, 0):
                reverting = false
                row += 1
            case (true, _):
                row -= 1
            }
        }
        return rows.joined()
    }
}