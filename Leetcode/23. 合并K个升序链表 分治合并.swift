class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.count <= 1 { return lists.first ?? nil }
        let mid = lists.count / 2
        var left = mergeKLists(Array(lists[0..<mid]))
        var right = mergeKLists(Array(lists[mid..<lists.count]))
        let head = ListNode(0)
        var tail = head
        while let leftNode = left, let rightNode = right {
            if leftNode.val > rightNode.val {
                tail.next = rightNode
                tail = rightNode
                right = rightNode.next
            } else {
                tail.next = leftNode
                tail = leftNode
                left = leftNode.next
            }
        }
        tail.next = left ?? right
        return head.next
    }
}