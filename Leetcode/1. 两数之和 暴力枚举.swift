class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in nums.indices {
            for j in nums[(i + 1)...].indices {
                if nums[i] + nums[j] == target {                
                    return [i, j]
                }
            }
        }
        return []
    }
}