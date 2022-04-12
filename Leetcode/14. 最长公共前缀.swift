class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let strs = strs.map { $0.map { $0 } }
        guard let min = strs.min(by: { $0.count < $1.count }) else { return "" }
        var result = ""
        for (index, str) in min.enumerated() {
            guard strs.allSatisfy({ $0[index] == str }) else { break }
            result.append(str)
        }
        return result
    }
}