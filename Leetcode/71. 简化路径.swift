class Solution {
    func simplifyPath(_ path: String) -> String {
        var stack = [Substring]()
        for path in path.split(separator: "/") {
            switch path {
            case ".": continue
            case "..": stack.popLast()
            default: stack.append(path)
            }
        }
        return "/" + stack.joined(separator: "/")
    }
}