class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var maxValue = 1, minValue = 1, result = Int.min
        for num in nums {
            if num < 0 {
                (maxValue, minValue) = (minValue, maxValue)
            }
            maxValue = max(maxValue * num, num)
            minValue = min(minValue * num, num)
            
            result = max(maxValue, result)
        }
        return result
    }
}