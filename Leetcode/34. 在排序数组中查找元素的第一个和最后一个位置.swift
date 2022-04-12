class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var start = 0, end = nums.count
        while start < end {
            let mid = start + (end - start) / 2
            if nums[mid] >= target {
                end = mid
            } else {
                start = mid + 1
            }
        }
        if start == nums.count || nums[start] != target { return [-1, -1] }
        let left = start
        end = nums.count
        while start < end {
            let mid = start + (end - start) / 2
            if nums[mid] <= target {
                start = mid + 1
            } else {
                end = mid
            }
        }
        return [left, start - 1]
    }
}