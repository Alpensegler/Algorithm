class Solution {
    let valueSymbols = [
        (1000, "M"),
        (900, "CM"),
        (500, "D"),
        (400, "CD"),
        (100, "C"),
        (90, "XC"),
        (50, "L"),
        (40, "XL"),
        (10, "X"),
        (9, "IX"),
        (5, "V"),
        (4, "IV"),
        (1, "I")
    ]
    
    func intToRoman(_ num: Int) -> String {
        var num = num, result = ""
        for (value, symbol) in valueSymbols {
            while num >= value {
                num -= value
                result += symbol
            }
        }
        return result
    }
}