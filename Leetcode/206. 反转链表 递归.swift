class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head, let next = head.next else { return head }
        let reversed = reverseList(next)
        next.next = head
        head.next = nil
        return reversed
    }
}