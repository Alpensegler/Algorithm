class Solution {
    enum Direction {
        case left, right, up, down
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard matrix.count > 1 else { return matrix[0] }
        guard matrix[0].count > 1 else { return matrix.flatMap { $0 } }
        var direction = Direction.right, result = [Int]()
        var horizontal = (lower: 0, upper: matrix[0].count - 1), vertical = (lower: 0, upper: matrix.count - 1)
        while vertical.lower <= vertical.upper && horizontal.lower <= horizontal.upper {
            switch direction {
            case .right:
                result.append(contentsOf: matrix[vertical.lower][horizontal.lower...horizontal.upper])
                vertical.lower += 1
                direction = .down
            case .down:
                result.append(contentsOf: matrix[vertical.lower...vertical.upper].map { $0[horizontal.upper] })
                horizontal.upper -= 1
                direction = .left
            case .left:
                result.append(contentsOf: matrix[vertical.upper][horizontal.lower...horizontal.upper].reversed())
                vertical.upper -= 1
                direction = .up
            case .up:
                result.append(contentsOf: matrix[vertical.lower...vertical.upper].map { $0[horizontal.lower] }.reversed())
                horizontal.lower += 1
                direction = .right
            }
        }
        return result
    }
}