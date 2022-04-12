class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max, maxProfit = 0
        for price in prices {
            minPrice = min(minPrice, price)
            maxProfit = max(maxProfit, price - minPrice)
        }
        return maxProfit
    }
}