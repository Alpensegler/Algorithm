class Solution {
    func fib(_ n: Int) -> Int {
        guard n > 1 else { return n }
        var previous = 0, result = 1
        for _ in 2...n {
            (result, previous) = (previous + result, result)
        }
        return result
    }
}