class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var presum = [0: 1], sum = 0, count = 0
        for i in nums.indices {
            sum += nums[i]
            count += presum[sum - k] ?? 0
            presum[sum, default: 0] += 1
        }
        return count
    }
}