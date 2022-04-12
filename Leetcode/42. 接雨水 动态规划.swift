class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.count <= 1 { return 0 }
        var leftMax = height, rightMax = height
        for i in 1..<leftMax.count {
            leftMax[i] = max(leftMax[i - 1], leftMax[i])
        }
        for i in (0..<leftMax.count - 1).reversed() {
            rightMax[i] = max(rightMax[i + 1], rightMax[i])
        }
        return height.indices.reduce(0) {
            $0 + min(leftMax[$1], rightMax[$1]) - height[$1]
        }
    }
}