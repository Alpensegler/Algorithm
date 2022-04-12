class Solution {
    func reversePairs(_ nums: [Int]) -> Int {
        func mergeSort(_ nums: [Int]) -> ([Int], Int) {
            let count = nums.count
            guard count >= 2 else { return (nums, 0) }
            let mid = count / 2
            let (left, leftPairs) = mergeSort(Array(nums[0..<mid]))
            let (right, rightPairs) = mergeSort(Array(nums[mid..<count]))
            var l = 0, r = 0, result = [Int](), pairs = leftPairs + rightPairs
            while l < left.count && r < right.count {
                if left[l] > right[r] {
                    result.append(right[r])
                    r += 1
                    pairs += left.count - l
                } else {
                    result.append(left[l])
                    l += 1
                }
            }
            
            if l < left.count {
                result.append(contentsOf: left[l...])
            } else {
                result.append(contentsOf: right[r...])
            }
            
            return (result, pairs)
        }
        return mergeSort(nums).1
    }
}