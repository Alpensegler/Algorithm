class Solution {
    func smallestK(_ arr: [Int], _ k: Int) -> [Int] {
        guard arr.count >= k, k >= 1 else { return [] }
        var arr = arr
        func quickSelect(start: Int, end: Int) {
            guard start < end else { return }
            let pivot = partition(start: start, end: end)
            if pivot == k - 1 { return }
            if pivot < k - 1 {
                quickSelect(start: pivot + 1, end: end)
            } else {
                quickSelect(start: start, end: pivot - 1)
            }
        }
        
        func partition(start: Int, end: Int) -> Int {
            arr.swapAt(.random(in: start..<end), end)
            var pivot = start
            for i in start..<end where arr[end] > arr[i] {
                arr.swapAt(pivot, i)
                pivot += 1
            }
            arr.swapAt(pivot, end)
            return pivot
        }
        quickSelect(start: 0, end: arr.count - 1)
        return Array(arr[..<k])
    }
}