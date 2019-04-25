import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var unpaired = 0
    var paireds = [Int]()
    
    for i in 0..<A.count {
        
        if paireds.contains(A[i]) {
            continue
        }
        let next = i + 1
        for j in next..<A.count {
            print("I=\(i) J=\(j)")
            if A[i] == A[j] {
                paireds.append(A[i])
                break
            }
        }
        print("-------")
        
        if !paireds.contains(A[i]) {
            unpaired = A[i]
        }
    }
    return unpaired
}

public func solution2(_ A : inout [Int]) -> Int {
    
    var unpaireds: [Int] = [Int]()
    var paireds: [Int] = [Int]()
    
    for i in 0..<A.count {
        
        if paireds.contains(A[i]) { continue }
        
        if !unpaireds.contains(A[i]) {
            unpaireds.append(A[i])
        } else {
            paireds.append(A[i])
        }
    }
    
    guard let unpaired = unpaireds.last else {
        return 0
    }
    return unpaired
}

var arr = [25,9,3,9,3,9,7,9,3,1,5,7,1,0,42]
print("\(solution2(&arr)) is left unpaired.")
