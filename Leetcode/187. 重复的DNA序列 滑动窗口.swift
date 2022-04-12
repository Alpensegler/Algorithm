class Solution {
    let length = 10
    
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        var left = s.startIndex, right = left
        var dict = [Substring: Int](), results = [String]()
        for _ in 0..<length {
            if right == s.endIndex { return results }
            right = s.index(after: right)
        }
        while true {
            let substring = s[left..<right]
            dict[substring, default: 0] += 1
            if dict[substring] == 2 {
                results.append(String(substring))
            }
            if right == s.endIndex { break }
            left = s.index(after: left)
            right = s.index(after: right)
        }
        return results
    }
}