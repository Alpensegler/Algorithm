class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        var l1 = l1, l2 = l2
        let dump = ListNode(0)
        var previous = dump, carry = false
        while l1 != nil || l2 != nil || carry {
            let value = (l1?.val ?? 0) + (l2?.val ?? 0) + (carry ? 1 : 0)
            let node = ListNode(value % 10)
            previous.next = node
            previous = node
            carry = value >= 10
            l1 = l1?.next
            l2 = l2?.next
        }
        return dump.next
    }
}