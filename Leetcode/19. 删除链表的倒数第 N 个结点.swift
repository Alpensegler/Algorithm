class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0, head)
        var fast = head, previous: ListNode? = dummy
        for _ in 0..<n {
            fast = fast?.next
        }
        while fast != nil {
            previous = previous?.next
            fast = fast?.next
        }
        previous?.next = previous?.next?.next
        return dummy.next
    }
}