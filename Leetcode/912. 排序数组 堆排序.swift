class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        var nums = nums
        for i in stride(from: nums.count / 2 - 1, through: 0, by: -1) {
            sink(index: i, count: nums.count)
        }
        
        for i in stride(from: nums.count - 1, through: 1, by: -1) {
            nums.swapAt(0, i)
            sink(index: 0, count: i)
        }
        
        func sink(index: Int, count: Int) {
            var index = index
            while true {
                var nextIndex: Int?
                let left = index * 2 + 1, right = left + 1
                if left < count, nums[index] < nums[left] {
                    nextIndex = left
                }
                if right < count, nums[nextIndex ?? index] < nums[right] {
                    nextIndex = right
                }
                guard let nextIndex = nextIndex else { return }
                nums.swapAt(nextIndex, index)
                index = nextIndex
            }
        }
        
        return nums
    }
}