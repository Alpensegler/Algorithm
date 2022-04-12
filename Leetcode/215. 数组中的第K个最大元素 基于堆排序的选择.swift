class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > k else { return nums.min()! }
        var heap = ContiguousArray(nums)
        func sink(index: Int) {
            var index = index
            while true {
                let left = index * 2 + 1, right = left + 1
                var nextIndex: Int?
                if left < heap.count, heap[left] > heap[index] {
                    nextIndex = left
                }
                if right < heap.count, heap[right] > heap[nextIndex ?? index] {
                    nextIndex = right
                }
                guard let nextIndex = nextIndex else { break }
                heap.swapAt(nextIndex, index)
                index = nextIndex
            }
        }
        func deleteTop() {
            heap[0] = heap.removeLast()
            sink(index: 0)
        }
        
        for i in stride(from: nums.count / 2 - 1, through: 0, by: -1) {
            sink(index: i)
        }
        for _ in 0..<k - 1 {
            deleteTop()
        }
        
        return heap[0]
    }
}