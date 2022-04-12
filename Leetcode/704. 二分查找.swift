class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty { return -1 }
        var start = 0, end = nums.count - 1
        while start <= end {
            let mid = (start + end) / 2
            if nums[mid] == target { return mid }
            if nums[mid] > target {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        return -1
    }
}