class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty { return "" }
        let start = s.startIndex, end = s.index(before: s.endIndex)
        var maxLength = 0, maxString: Substring = ""
        var left = s.startIndex, right = s.startIndex, rightAdvanced = false
        while left < s.endIndex, right < s.endIndex {
            defer {
                if rightAdvanced {
                    left = s.index(after: left)
                } else {
                    right = s.index(after: right)
                }
                rightAdvanced = !rightAdvanced
            }
            guard s[left] == s[right] else { continue }
            var left = left, right = right, length = rightAdvanced ? 2 : 1
            while left != start, right != end {
                let beforeLeft = s.index(before: left)
                let afterRight = s.index(after: right)
                if s[beforeLeft] != s[afterRight] { break }
                length += 2
                left = beforeLeft
                right = afterRight
            }
            if maxLength >= length { continue }
            maxLength = length
            maxString = s[left...right]
        }
        return String(maxString)
    }
}