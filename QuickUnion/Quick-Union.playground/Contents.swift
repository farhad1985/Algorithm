import UIKit

class QuickUnion {
    var ids: [Int] = []
    
    init(number: Int) {

        for i in 0..<number {
            ids += [i]
        }
    }
    
    func isConnected(p: Int, q: Int) {
        let i = root(i: p)
        let j = root(i: q)
        if i == j {
            print("\(p) is connected to \(q)")
        } else {
            print("\(p) is not connected to \(q)")
        }
    }
    
    func union(p: Int, q: Int) {
        let i = root(i: p)
        let j = root(i: q)
        
        if i == j {
            print("\(p) is connected to \(q)")
        } else {
            ids[i] = j
        }
    }
    
    func printIds() {
        print(ids)
    }
    
    private func root(i: Int) -> Int {
        var j = i
        while j != ids[j] {
            j = ids[j]
        }
        return j
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

qu.isConnected(p: 4, q: 5)
