class Solution {
    func isUnique(_ astr: String) -> Bool {
        var value = 0
        let a: Character = "a", offset = a.asciiValue!
        for char in astr {
            let bit = 1 << (char.asciiValue! - offset)
            if value & bit != 0 {
                return false
            } else {
                value |= bit
            }
        }
        return true
    }
}