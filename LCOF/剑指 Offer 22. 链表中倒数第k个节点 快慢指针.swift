class Solution {
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var fast = head, slow = head
        for _ in 0..<k {
            fast = fast?.next
        }
        while fast != nil {
            slow = slow?.next
            fast = fast?.next
        }
        return slow
    }
}