class Solution {
    func jump(_ nums: [Int]) -> Int {
        if nums.count == 1 { return 0 }
        var cache = Array(repeating: Int.max, count: nums.count)
        cache[0] = 0
        for (index, num) in nums.enumerated() where num > 0 {
            for offset in 1...num where index + offset < cache.count {
                cache[index + offset] = min(cache[index + offset], cache[index] + 1)
            }
        }
        return cache.last ?? 0
    }
}