class Solution {
    func reversePrint(_ head: ListNode?) -> [Int] {
        var stack = [Int](), node = head
        while let current = node {
            stack.append(current.val)
            node = current.next
        }
        return stack.reversed()
    }
}