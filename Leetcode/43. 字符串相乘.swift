class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" { return "0" }
        let num1 = Array(num1), num2 = Array(num2)
        var ans = Array(repeating: 0, count: num1.count + num2.count)
        for i in num1.indices.reversed() {
            for j in num2.indices.reversed() {
                let first = num1[i].wholeNumberValue!
                let second = num2[j].wholeNumberValue!
                let val = first * second + ans[i + j + 1]
                ans[i + j] += val / 10
                ans[i + j + 1] = val % 10
            }
        }
        return ans[(ans.first == 0 ? 1 : 0)...].map { "\($0)" }.joined()
    }
}