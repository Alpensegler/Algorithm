class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s), p = Array(p)
        var dp = Array(repeating: Array(repeating: false, count: p.count + 1), count: s.count + 1)
        dp[0][0] = true
        for j in 1...p.count where p[j - 1] == "*" {
            dp[0][j] = dp[0][j - 2]
        }
        for i in 1...s.count {
            for j in 1...p.count {
                if s[i - 1] == p[j - 1] || p[j - 1] == "." {
                    dp[i][j] = dp[i - 1][j - 1]
                } else if p[j - 1] == "*" {
                    if s[i - 1] == p[j - 2] || p[j - 2] == "." {
                        dp[i][j] = dp[i][j - 2] //aab aabb* 0time
                            || dp[i - 1][j - 2] //aab aab* 1time
                            || dp[i - 1][j] //aabb aab* >=2time
                    } else {
                        dp[i][j] = dp[i][j - 2]
                    }
                }
            }
        }
        return dp[s.count][p.count]
    }
}