class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var result = 0, previous = 0
        for char in s {
            let value = dict[char]!
            if value > previous {
                result = result - previous * 2
            }
            result += value
            previous = value
        }
        return result
    }
}