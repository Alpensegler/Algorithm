class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x <= 1 { return x }
        var l = 0, r = x
        while l < r {
            let mid = l + (r - l) / 2, squre = mid * mid
            if squre == x { return mid }
            if squre < x {
                l = mid + 1
            } else {
                r = mid
            }
        }
        return l - 1
    }
}