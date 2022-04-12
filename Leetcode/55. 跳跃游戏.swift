class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        guard let first = nums.first else { return false }
        if nums.count == 1 { return true }
        var current = 0, farest = first
        while current <= farest {
            for i in current...farest {
                farest = max(farest, nums[i] + i)
                if farest >= nums.count - 1 { return true }
                current += 1
            }
        }
        return false
    }
}