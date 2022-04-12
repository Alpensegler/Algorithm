class Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var nextCount = k, node = head
        while nextCount != 0 {
            guard let current = node else { return head }
            node = current.next
            nextCount -= 1
            if nextCount == 0 {
                current.next = nil
            }
        }
        let reversed = reverseKGroup(node, k)
        node = head
        var previous: ListNode?
        while let current = node {
            node = current.next
            current.next = previous
            previous = current
        }
        head?.next = reversed
        return previous
    }
}