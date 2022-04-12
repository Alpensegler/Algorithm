class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        let version1 = version1.split(separator: ".").compactMap { Int($0) }
        let version2 = version2.split(separator: ".").compactMap { Int($0) }
        for i in 0..<max(version1.count, version2.count) {
            let v1 = i < version1.count ? version1[i] : 0
            let v2 = i < version2.count ? version2[i] : 0
            if v1 > v2 { return 1 }
            if v2 > v1 { return -1 }
        }
        return 0
    }
}