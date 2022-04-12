class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int](minimumCapacity: nums.count)
        for (offset, num) in nums.enumerated() {
            if let other = dict[target - num] {
                return [other, offset]
            }
            dict[num] = offset
        }
        return []
    }
}