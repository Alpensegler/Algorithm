class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if nums.count <= 1 { return }
        let k = k % nums.count
        if k == 0 { return }
        var count = 0
        for i in nums.indices {
            var previous = nums[i], index = i
            repeat {
                index = (index + k) % nums.count
                (previous, nums[index]) = (nums[index], previous)
                count += 1
            } while index != i
            if count == nums.count { break }
        }
    }
}