class Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        let heaters = heaters.sorted()
        var ans = Int.min
        
        for i in houses.indices {
            let house = houses[i]
            var left = 0, right = heaters.count
            
            while left < right {
                let mid = left + (right - left) / 2
                if heaters[mid] - house >= 0 {
                    right = mid
                } else {
                    left = mid + 1
                }
            }
            
            let distance: Int
            if right == heaters.count {
                distance = house - heaters.last!
            } else if right == 0 {
                distance = heaters.first! - house
            } else {
                distance = min(heaters[right] - house, house - heaters[right - 1])
            }
            ans = max(distance, ans)
        }
        return ans
    }
}