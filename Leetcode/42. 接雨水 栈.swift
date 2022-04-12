class Solution {
    func trap(_ height: [Int]) -> Int {
        var stack = [Int](), ans = 0
        for i in height.indices {
            while let top = stack.last, height[i] > height[top] {
                stack.popLast()
                guard let left = stack.last else { break }
                let width = i - left - 1
                let height = min(height[i], height[left]) - height[top]
                ans += width * height
            }
            stack.append(i)
        }
        return ans
    }
}