class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 || (0 == x % 10 && x != 0) {
            return false
        }
        
        var x = x, reverse = 0
        while x > reverse {
            reverse = reverse * 10 + x % 10
            x /= 10
        }
        
        return x == reverse || x == reverse / 10
    }
}