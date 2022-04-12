class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        for i in nums.indices {
            var sum = 0
            for j in (0...i).reversed() {
                sum += nums[j]
                if sum == k { result += 1 }
            }
        }
        return result
    }
}