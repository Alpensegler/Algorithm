class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Int](), results = Array(repeating: 0, count: temperatures.count)
        for i in temperatures.indices {
            while let last = stack.last, temperatures[i] > temperatures[last] {
                stack.removeLast()
                results[last] = i - last
            }
            stack.append(i)
        }
        return results
    }
}