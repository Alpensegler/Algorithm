class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var minDistance = Int.max, result = 0
        for i in 0..<nums.count - 2 {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            var left = i + 1, right = nums.count - 1
            while left < right {
                let sum = nums[i] + nums[left] + nums[right]
                if sum == target {
                    return sum
                } else if sum - target > 0 {
                    right -= 1
                } else {
                    left += 1
                }
                let distance = abs(sum - target)
                if distance < minDistance {
                    minDistance = distance
                    result = sum
                }
            }
        }
        return result
    }
}