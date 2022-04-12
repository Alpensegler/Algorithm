class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var node = head, previous: ListNode?
        while let current = node {
            node = current.next
            current.next = previous
            previous = current
        }
        return previous
    }
}