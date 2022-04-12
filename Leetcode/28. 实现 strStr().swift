class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty { return 0 }
        let haystack = Array(haystack)
        let needle = Array(needle)
        if haystack.count < needle.count { return -1 }
        loop: for i in 0...haystack.count - needle.count where haystack[i] == needle[0] {
            for j in 0..<needle.count where needle[j] != haystack[i + j] {
                continue loop
            }
            return i
        }
        return -1
    }
}