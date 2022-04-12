class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var path = [Int](), results = [[Int]](), used = Set<Int>()
        func backtrack() {
            if used.count == nums.count {
                results.append(path)
                return
            }
            
            for num in nums where !used.contains(num) {
                used.insert(num)
                path.append(num)
                backtrack()
                used.remove(num)
                path.removeLast()
            }
        }
        backtrack()
        return results
    }
}