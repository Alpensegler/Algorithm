class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        if s.isEmpty || s.index(after: s.startIndex) == s.endIndex {
            return wordDict.contains(s)
        }
        var dp = [true], set = Set(wordDict.map { Substring($0) })
        loop: for end in s.indices {
            for (dpIndex, start) in s.indices[s.startIndex...end].enumerated() {
                guard dp[dpIndex] && set.contains(s[start...end]) else {
                    continue
                }
                dp.append(true)
                continue loop
            }
            dp.append(false)
        }
        return dp.last!
    }
}