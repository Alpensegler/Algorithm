class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        guard
            nums.count > 1,
            let i = (0..<nums.count - 1).last(where: { nums[$0] < nums[$0 + 1] }),
            let j = nums.lastIndex(where: { $0 > nums[i] })
        else {
            nums.reverse()
            return
        }
        nums.swapAt(i, j)
        nums[i + 1...nums.count - 1].reverse()
    }
}