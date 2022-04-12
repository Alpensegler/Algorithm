class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        if nums.isEmpty || nums.count == 1 { return nums }
        let count = nums.count, mid = count / 2
        let left = sortArray(Array(nums[0..<mid]))
        let right = sortArray(Array(nums[mid..<count]))
        var results = [Int](), l = 0, r = 0
        let lCount = left.count, rCount = right.count
        while l < lCount && r < rCount {
            if left[l] < right[r] {
                results.append(left[l])
                l += 1
            } else {
                results.append(right[r])
                r += 1
            }
        }
        if l < lCount {
            results.append(contentsOf: left[l..<lCount])
        } else {
            results.append(contentsOf: right[r..<rCount])
        }
        return results
    }
}