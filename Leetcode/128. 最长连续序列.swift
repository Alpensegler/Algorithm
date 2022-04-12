class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums), result = 0
        while !set.isEmpty {
            let value = set.removeFirst()
            var path = 1, left = value - 1, right = value + 1
            while let removed = set.remove(left) {
                path += 1
                left = removed - 1
            }
            while let removed = set.remove(right) {
                path += 1
                right = removed + 1
            }
            result = max(result, path)
        }
        return result
    }
}