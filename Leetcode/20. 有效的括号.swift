class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var stack = [Character]()
        for char in s {
            switch (stack.last, char) {
            case ("("?, ")"), ("{"?, "}"), ("["?, "]"):
                stack.removeLast()
            default:
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}