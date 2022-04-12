class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var nums = nums
        for i in nums.indices where nums[i] <= 0 {
            nums[i] = nums.count + 1
        }
        for num in nums where num <= nums.count {
            nums[num - 1] = -1
        }
        return nums.firstIndex { $0 > 0 }.map { $0 + 1 } ?? nums.count + 1
    }
}