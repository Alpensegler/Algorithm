class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var heap = lists.compactMap { $0 }
        func sink(index: Int) {
            var index = index
            while true {
                var nextIndex: Int?
                let left = index * 2 + 1, right = left + 1
                if left < heap.count, heap[index].val > heap[left].val {
                    nextIndex = left
                }
                if right < heap.count, heap[nextIndex ?? index].val > heap[right].val {
                    nextIndex = right
                }
                guard let nextIndex = nextIndex else { return }
                heap.swapAt(nextIndex, index)
                index = nextIndex
            }
        }
        for i in stride(from: heap.count / 2 - 1, through: 0, by: -1) {
            sink(index: i)
        }
        let head = ListNode(0)
        var tail = head
        while let min = heap.first {
            tail.next = min
            tail = min
            guard let node = min.next ?? (heap.count > 1 ? heap.popLast() : nil) else {
                break
            }
            heap[0] = node
            sink(index: 0)
        }
        return head.next
    }
}