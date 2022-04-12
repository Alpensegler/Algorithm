class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0, previous: Int?
        for num in nums where num != previous {
            nums[i] = num
            previous = num
            i += 1
        }
        return i
    }
}