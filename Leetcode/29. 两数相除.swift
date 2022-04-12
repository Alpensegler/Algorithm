class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        if dividend == 0 || divisor == 1 { return dividend }
        if divisor == -1 {
            if dividend > Int(Int32.min) { return -dividend }
            return Int(Int32.max)
        }
        let sign = dividend > 0 && divisor > 0 || dividend < 0 && divisor < 0
        let dividend = abs(dividend), divisor = abs(divisor)
        var target = dividend, result = 0
        while target >= divisor {
            var sum = divisor, count = 1
            while sum + sum <= target {
                sum += sum
                count += count
            }
            target -= sum
            result += count
            count = 1
            sum = divisor
        }
        return sign ? result : -result
    }
}