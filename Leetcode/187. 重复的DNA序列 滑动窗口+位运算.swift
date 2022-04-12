class Solution {
    static let length = 10
    static let mask = (1 << (length * 2)) - 1
    
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        let charValue: [Character: Int] = ["A": 0, "T": 1, "C": 2, "G": 3]
        
        var left = s.startIndex, right = left, windowValue = 0
        for _ in 0..<Self.length {
            if right == s.endIndex { return [] }
            windowValue = (windowValue << 2) | charValue[s[right]]!
            right = s.index(after: right)
        }
        
        var dict = [Int: Int](), results = [String]()
        while true {
            dict[windowValue, default: 0] += 1
            if dict[windowValue] == 2 {
                results.append(String(s[left..<right]))
            }
            if right == s.endIndex { break }
            windowValue = ((windowValue << 2) | charValue[s[right]]!) & Self.mask
            left = s.index(after: left)
            right = s.index(after: right)
        }
        return results
    }
}