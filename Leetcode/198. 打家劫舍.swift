class Solution {
    func rob(_ nums: [Int]) -> Int {
        var result = 0, previous = 0
        for num in nums {
            let max = max(num + previous, result)
            previous = result
            result = max
        }
        return result
    }
}