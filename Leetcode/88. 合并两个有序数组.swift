class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 { return }
        var i = m + n - 1, m = m - 1, n = n - 1
        while m >= 0 || n >= 0 {
            if m < 0 || (n >= 0 && nums1[m] < nums2[n]) {
                nums1[i] = nums2[n]
                n -= 1
            } else {
                nums1[i] = nums1[m]
                m -= 1
            }
            i -= 1
        }
    }
}