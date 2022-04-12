class Solution {
    func findNthDigit(_ n: Int) -> Int {
        var d = 1, pow = 1, n = n
        while n > d * pow * 9 {
            n -= d * pow * 9
            pow *= 10
            d += 1
        }
        let i = (n - 1) % d, num = String(pow + (n - 1) / d)
        return num[num.index(num.startIndex, offsetBy: i)].wholeNumberValue!
    }
}