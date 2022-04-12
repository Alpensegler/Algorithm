class Solution {
    func myAtoi(_ s: String) -> Int {
        var result = 0, sign = 1
        var signFound = false, digitFound = false
        for char in s {
            if char == " " {
                if digitFound || signFound { break }
                continue
            }
            if char == "-" || char == "+" {
                if signFound || digitFound { break }
                sign = char == "-" ? -1 : 1
                signFound = true
                continue
            }
            guard let digit = char.wholeNumberValue else { break }
            digitFound = true
            if result * 10 + digit > Int(Int32.max) {
                result = Int(Int32.max)
                result += (sign < 0 ? 1 : 0)
                break
            }
            result = result * 10 + digit
        }
        return result * sign
    }
}