class Solution {
    func getMaxMatrix(_ matrix: [[Int]]) -> [Int] {
        let m = matrix.count, n = matrix[0].count
        var maxSum = Int.min, r1 = 0, c1 = 0, r2 = 0, c2 = 0
        var res = Array(repeating: 0, count: 4)
        
        for beginR in 0..<m {
            var columnSum = [Int](repeating: 0, count: n)
            for r in beginR..<m {
                var sum = 0
                for c in 0..<n {
                    columnSum[c] += matrix[r][c]
                    
                    if sum > 0 {
                        sum += columnSum[c]
                    } else {
                        sum = columnSum[c]
                        r1 = beginR
                        c1 = c
                    }

                    guard sum > maxSum else { continue }
                    maxSum = sum
                    r2 = r
                    c2 = c
                    res = [r1, c1, r2, c2]
                }
            }
        }
        
        return res
    }
}