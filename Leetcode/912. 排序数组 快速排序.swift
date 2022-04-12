class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        func quickSort(start: Int, end: Int) {
            guard start < end else { return }
            let pivot = partition(start: start, end: end)
            quickSort(start: start, end: pivot - 1)
            quickSort(start: pivot + 1, end: end)
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
        
        quickSort(start: 0, end: nums.count - 1)
        return nums
    }
}