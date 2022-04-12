class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 3 { return n }
        var result = 3, oneStepBefore = 2
        
        for _ in 3..<n {
            (result, oneStepBefore) = (result + oneStepBefore, result)
        }
        
        return result
    }
}