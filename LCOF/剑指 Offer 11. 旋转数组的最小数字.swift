class Solution {
    func minArray(_ numbers: [Int]) -> Int {
        if numbers.count == 1 { return numbers[0] }
        var left = 0, right = numbers.count - 1
        while left < right {
            let mid = left + (right - left) / 2
            if numbers[mid] == numbers[right] {
                right -= 1
            } else if numbers[mid] > numbers[right] {
                left = mid + 1
            } else if numbers[mid] < numbers[right] {
                right = mid
            }
        }
        return numbers[left]
    }
}