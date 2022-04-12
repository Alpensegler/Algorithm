class Solution {
    func restoreIpAddresses(_ s: String) -> [String] {
        let s = Array(s)
        if s.count < 4 || s.count > 12 { return [] }
        var results = [String](), path = [String]()
        
        func backtrack(startIndex: Int) {
            if startIndex >= s.count {
                results.append(path.joined(separator: "."))
                return
            }
            let roomLeft = 3 - path.count
            for offset in 1...3 where (roomLeft...roomLeft * 3).contains(s.count - startIndex - offset) {
                if s[startIndex] == "0", offset > 1 { continue }
                let endIndex = startIndex + offset
                let value = String(s[startIndex..<endIndex])
                if offset == 3, Int(value)! > 255 { continue }
                path.append(value)
                backtrack(startIndex: endIndex)
                path.removeLast()
            }
        }
        backtrack(startIndex: 0)
        return results
    }
}