class LRUCache {
    class Node {
        var key: Int, val: Int
        var previous: Node?, next: Node?
        
        init(key: Int, val: Int) {
            self.key = key
            self.val = val
        }
    }
    
    private var map: [Int: Node]
    private let capacity: Int
    private let dummyHead: Node
    private let dummyTail: Node

    init(_ capacity: Int) {
        self.capacity = capacity
        self.map = .init(minimumCapacity: capacity + 1)
        dummyHead = .init(key: 0, val: 0)
        dummyTail = .init(key: 0, val: 0)
        dummyHead.next = dummyTail
        dummyTail.previous = dummyHead
    }
    
    func get(_ key: Int) -> Int {
        get(key: key)?.val ?? -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = map[key] {
            remove(node: node)
            insert(node: node)
            node.val = value
        } else {
            let node = Node(key: key, val: value)
            insert(node: node)
            if map.count == capacity {
                let node = dummyTail.previous!
                remove(node: node)
                map[node.key] = nil
            }
            map[key] = node
        }
    }
    
    private func get(key: Int) -> Node? {
        guard let node = map[key] else { return nil }
        remove(node: node)
        insert(node: node)
        return node
    }
    
    private func remove(node: Node) {
        node.previous?.next = node.next
        node.next?.previous = node.previous
    }
    
    private func insert(node: Node) {
        node.next = dummyHead.next
        node.previous = dummyHead
        dummyHead.next?.previous = node
        dummyHead.next = node
    }
}