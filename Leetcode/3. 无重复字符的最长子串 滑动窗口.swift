class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var used = Set<Character>()
        var result = 0
        
        var right = s.startIndex, left = s.startIndex
        while right < s.endIndex {
            let char = s[right]
            right = s.index(after: right)
            while used.contains(char) {
                used.remove(s[left])
                left = s.index(after: left)
            }
            used.insert(char)
            result = max(used.count, result)
        }
        return result
    }
}