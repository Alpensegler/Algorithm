class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        if gas.reduce(0, +) < cost.reduce(0, +) { return -1 }
        var total = 0, start = 0
        for i in gas.indices {
            total += gas[i] - cost[i]
            if total < 0 {
                start = i + 1
                total = 0
            }
        }
        return start
    }
}