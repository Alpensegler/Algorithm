class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 2 else { return [] }
        let nums = nums.sorted()
        var results = [[Int]]()
        for i in 0..<nums.count - 2 {
            let num = nums[i]
            if num > 0 { break }
            if i > 0, num == nums[i - 1] { continue }
            var left = i + 1, right = nums.count - 1
            while left < right {
                let sum = nums[left] + nums[right] + num
                if sum == 0 {
                    results.append([num, nums[left], nums[right]])
                    while left < right, nums[left] == nums[left + 1] { left += 1 }
                    while left < right, nums[right] == nums[right - 1] { right -= 1 }
                    left += 1
                    right -= 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
        return results
    }
}