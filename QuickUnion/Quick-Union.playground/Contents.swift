import UIKit

class QuickUnion {
    var ids: [Int] = []
    
    init(number: Int) {

        for i in 0..<number {
            ids += [i]
        }
    }
    
    func isConnected(p: Int, q: Int) -> Bool {
        return ids[q] == p
    }
    
    func union(p: Int, q: Int) {
        if isConnected(p: p, q: q) {
            print("\(p) is Connected to \(q)")
        } else {
            ids[q] = p
        }
    }
    
    func printIds() {
        print(ids)
    }
}

var qu = QuickUnion(number: 10)

qu.union(p: 8, q: 1)
qu.union(p: 8, q: 3)
qu.union(p: 8, q: 9)
qu.union(p: 1, q: 0)
qu.union(p: 1, q: 2)
qu.union(p: 1, q: 7)
qu.union(p: 0, q: 5)
qu.union(p: 5, q: 6)
qu.union(p: 3, q: 4)

qu.printIds()
