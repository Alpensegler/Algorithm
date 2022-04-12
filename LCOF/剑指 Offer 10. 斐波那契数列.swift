class Solution {
    func fib(_ n: Int) -> Int {
        if n < 2 { return n }
        let m = 1000000007
        var previous = 0, current = 1
        for _ in 2...n {
            (current, previous) = ((previous + current) % m, current)
        }
        return current
    }
}