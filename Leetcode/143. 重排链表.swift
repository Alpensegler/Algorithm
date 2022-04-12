class Solution {
    func reorderList(_ head: ListNode?) {
        guard let head = head, var fast = head.next else { return }
        var slow = head
        while let slowNext = slow.next, let fastNext = fast.next?.next {
            slow = slowNext
            fast = fastNext
        }
        var rightPrevious: ListNode?
        var current = slow.next
        slow.next = nil
        while let node = current {
            current = node.next
            node.next = rightPrevious
            rightPrevious = node
        }
        var left: ListNode? = head
        var right = rightPrevious
        var previous = ListNode(0)
        let dummy = previous
        while let leftNode = left, let rightNode = right {
            left = leftNode.next
            right = rightNode.next
            leftNode.next = rightNode
            rightNode.next = nil
            previous.next = leftNode
            previous = rightNode
        }
        previous.next = right ?? left
        dummy.next = nil
    }
}