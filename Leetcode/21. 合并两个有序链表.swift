class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var current = ListNode(0)
        let dummy = current
        
        var list1Position = list1
        var list2Position = list2
        
        while let l1 = list1Position, let l2 = list2Position {
            if l1.val > l2.val {
                current.next = l2
                list2Position = l2.next
                current = l2
            } else {
                current.next = l1
                list1Position = l1.next
                current = l1
            }
        }
        current.next = list1Position ?? list2Position
        return dummy.next
    }
}