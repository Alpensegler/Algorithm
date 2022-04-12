class Solution {
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        var current = head
        let dummy = ListNode(0)
        dummy.next = current
        var previous: ListNode? = dummy
        for _ in 0..<left - 1 {
            previous = current
            current = current?.next
        }

        let beforeReverse = previous
        let reversedEnd = current

        for _ in left...right {
            let next = current?.next
            if previous?.next === current { previous?.next = nil }
            current?.next = previous
            previous = current
            current = next
        }
        
        beforeReverse?.next = previous
        reversedEnd?.next = current
        return dummy.next
    }
}