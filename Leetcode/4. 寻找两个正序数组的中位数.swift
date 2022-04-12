class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let (nums1, nums2) = nums1.count > nums2.count ? (nums2, nums1) : (nums1, nums2)
        let m = nums1.count, n = nums2.count
        let leftCount = (m + n + 1) / 2
        var start = 0, end = m
        while start <= end {
            let i = (start + end) / 2, j = leftCount - i
            let nums1MaxLeft = i == 0 ? Int.min : nums1[i - 1]
            let nums1MinRight = i == m ? Int.max : nums1[i]
            let nums2MaxLeft = j == 0 ? Int.min : nums2[j - 1]
            let nums2MinRight = j == n ? Int.max : nums2[j]
            
            if nums1MaxLeft <= nums2MinRight, nums2MaxLeft <= nums1MinRight {
                if (m + n) % 2 == 0 {
                    return (Double(max(nums2MaxLeft, nums1MaxLeft)) + Double(min(nums1MinRight, nums2MinRight))) / 2
                } else {
                    return Double(max(nums1MaxLeft, nums2MaxLeft))
                }
            } else if nums1MaxLeft > nums2MinRight {
                end = i - 1
            } else {
                start = i + 1
            }
        }
        return -1
    }
}