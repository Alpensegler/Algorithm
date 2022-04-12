class CQueue {
    var leftStack = [Int]()
    var rightStack = [Int]()

    init() { }
    
    func appendTail(_ value: Int) {
        rightStack.append(value)
    }
    
    func deleteHead() -> Int {
        guard leftStack.isEmpty else {
            return leftStack.removeLast()
        }
        while let last = rightStack.popLast() {
            leftStack.append(last)
        }
        return leftStack.popLast() ?? -1
    }
}