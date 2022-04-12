class Solution {
    func judgePoint24(_ cards: [Int]) -> Bool {
        var cards = cards.map { Double($0) }
        func judgePoint24() -> Bool {
            if cards.count == 1 { return abs(cards[0] - 24.0) < 0.000001 }
            
            for _ in cards.indices {
                let a = cards.removeFirst()
                for _ in cards.indices {
                    let b = cards.removeFirst()
                    for value in [a + b, a - b, a * b, a / b] {
                        cards.append(value)
                        if judgePoint24() { return true }
                        cards.popLast()
                    }
                    cards.append(b)
                }
                cards.append(a)
            }
            return false
        }
        return judgePoint24()
    }
}