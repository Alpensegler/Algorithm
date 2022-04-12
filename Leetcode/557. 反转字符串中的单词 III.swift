class Solution {
    func reverseWords(_ s: String) -> String {
        var results = [String](), reversed = ""
        for char in s {
            if char == " " {
                results.append(reversed)
                reversed = ""
            } else {
                reversed.insert(char, at: reversed.startIndex)
            }
        }
        if !reversed.isEmpty {
            results.append(reversed)
        }
        return results.joined(separator: " ")
    }
}