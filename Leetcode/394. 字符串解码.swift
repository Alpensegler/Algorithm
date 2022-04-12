class Solution {
    func decodeString(_ s: String) -> String {
        var stack = [(String, Int)]()
        var result = "", muti = 0
        for char in s {
            switch char {
            case "[":
                stack.append((result, muti))
                result = ""
                muti = 0
            case "]":
                let (previous, muti) = stack.removeLast()
                result = previous + String(repeating: result, count: muti)
            case _ where char.isWholeNumber:
                muti = muti * 10 + char.wholeNumberValue!
            default:
                result.append(char)
            }
        }
        return result
    }
}