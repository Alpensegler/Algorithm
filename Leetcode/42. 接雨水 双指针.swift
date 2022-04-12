class Solution {
    func trap(_ height: [Int]) -> Int {
        guard height.count > 1 else { return 0 }
        var left = 0, right = height.count - 1, ans = 0
        var leftMax = height[0], rightMax = height[right]
        while left < right {
            leftMax = max(leftMax, height[left])
            rightMax = max(rightMax, height[right])
            if height[left] < height[right] {
                ans += leftMax - height[left]
                left += 1
            } else {
                ans += rightMax - height[right]
                right -= 1
            }
        }
        return ans
    }
}