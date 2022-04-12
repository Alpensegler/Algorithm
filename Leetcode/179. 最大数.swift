class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        let result = nums.map { String($0) }
            .sorted { $0 + $1 > $1 + $0 }
            .joined()
        if result.first == "0" { return "0" }
        return result
    }
}