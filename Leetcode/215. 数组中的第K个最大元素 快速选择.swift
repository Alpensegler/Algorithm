class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        let position = nums.count - k
        
        func quickSelect(start: Int, end: Int) -> Int {
            if start == end { return nums[start] }
            let pivot = partition(start: start, end: end)
            if pivot == position {
                return nums[pivot]
            } else if pivot < position {
                return quickSelect(start: pivot + 1, end: end)
            } else {
                return quickSelect(start: start, end: pivot - 1)
            }
        }
        
        func partition(start: Int, end: Int) -> Int {
            nums.swapAt(.random(in: start..<end), end)
            var pivot = start
            for i in start..<end where nums[i] < nums[end] {
                nums.swapAt(i, pivot)
                pivot += 1
            }
            nums.swapAt(pivot, end)
            return pivot
        }
        return quickSelect(start: 0, end: nums.count - 1)
    }
}