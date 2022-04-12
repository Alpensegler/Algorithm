class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>(minimumCapacity: nums.count)
        for num in nums {
            if set.contains(num) { return true }
            set.insert(num)
        }
        return false
    }
}