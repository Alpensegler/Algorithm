class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        guard nums.count >= 4 else { return [] }
        let nums = nums.sorted()
        var results = [[Int]]()
        for i in 0...nums.count - 4 {
            if i > 0, nums[i] == nums[i - 1] { continue }
            if nums[i] + nums[i + 1] + nums[i + 2] + nums[i + 3] > target {
                break
            }
            for j in i + 1...nums.count - 3 {
                if j > i + 1, nums[j] == nums[j - 1] { continue }
                if nums[i] + nums[j] + nums[j + 1] + nums[j + 2] > target {
                    break
                }
                var left = j + 1, right = nums.count - 1
                while left < right {
                    let sum = nums[i] + nums[j] + nums[left] + nums[right]
                    if sum == target {
                        results.append([nums[i], nums[j], nums[left], nums[right]])
                        while left < right, nums[left] == nums[left + 1] { left += 1 }
                        while left < right, nums[right] == nums[right - 1] { right -= 1 }
                        left += 1
                        right -= 1
                    } else if sum > target {
                        right -= 1
                    } else {
                        left += 1
                    }
                }
            }
        }
        return results
    }
}