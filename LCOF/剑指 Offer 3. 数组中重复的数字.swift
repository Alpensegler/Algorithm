class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>(minimumCapacity: nums.count)
        for num in nums {
            if set.contains(num) {
                return num
            } else {
                set.insert(num)
            }
        }
        return -1
    }
}