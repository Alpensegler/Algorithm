class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var pre = 0, maxSum = nums[0]
        for num in nums {
            pre = max(pre + num, num)
            maxSum = max(pre, maxSum)
        }
        return maxSum
    }
}