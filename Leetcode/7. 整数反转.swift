class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x, result = 0
        while x != 0 {
            result = result * 10 + x % 10
            x /= 10
        }
        return result > Int32.max || result < Int32.min ? 0 : result
    }
}