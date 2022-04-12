class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        let s = Array(s)
        guard s.count > 1 else { return 0 }
        var dp = Array(repeating: 0, count: s.count), result = 0
        for i in 1..<s.count where s[i] == ")" {
            let previousIndex: Int
            if s[i - 1] == "(" {
                dp[i] = 2
                previousIndex = i - 2
            } else {
                let previousLeftIndex = i - dp[i - 1] - 1
                guard previousLeftIndex >= 0, s[previousLeftIndex] == "(" else { continue }
                dp[i] = dp[i - 1] + 2
                previousIndex = previousLeftIndex - 1
            }
            if previousIndex >= 0 {
                dp[i] += dp[previousIndex]
            }
            result = max(dp[i], result)
        }
        return result
    }
}