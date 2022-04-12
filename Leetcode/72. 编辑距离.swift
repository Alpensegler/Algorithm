class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        if word1.isEmpty { return word2.count }
        if word2.isEmpty { return word1.count }
        let word1 = Array(word1), word2 = Array(word2)
        var dp = Array(repeating: Array(repeating: 0, count: word2.count + 1), count: word1.count + 1)
        (0...word1.count).forEach { dp[$0][0] = $0 }
        (0...word2.count).forEach { dp[0][$0] = $0 }
        
        for i in 1...word1.count {
            for j in 1...word2.count {
                if word1[i - 1] == word2[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1]
                } else {
                    dp[i][j] = min(dp[i - 1][j - 1], dp[i][j - 1], dp[i - 1][j]) + 1
                }
            }
        }
        return dp.last!.last!
    }
}