class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted { $0[0] < $1[0] }
        var results = [[Int]]()
        var start = intervals[0][0], end = intervals[0][1]
        for interval in intervals[1...] {
            if interval[0] > end {
                results.append([start, end])
                start = interval[0]
            }
            end = max(end, interval[1])
        }
        results.append([start, end])
        return results
    }
}