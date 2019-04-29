import UIKit

public func frogJumpSolution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    guard Y > 0 && X <= Y else {
        return 0
    }
    let remain = Y - X
    var mustJump = remain/D
    if (mustJump * D < remain ) {
        mustJump += 1
    }
    return mustJump
}

//print("Minimal jump is \(frogJumpSolution(1, 5, 2))")

public func permutationMissingElementSolution(_ A : inout [Int]) -> Int {
    guard !A.isEmpty else { return 1 }
    var result: Int = 0
    var arr: [Int] = A
    for i in 0..<A.count {
        if !A.contains(i+1) {
            result = i+1
            break
        }
    }
    return result
}

//var arr = [1]
//print("Permutation Missing Element is \(permutationMissingElementSolution(&arr))")

public func tapeEquilibriumSolution(_ A : inout [Int]) -> Int {
    var minimalDifference = Int.max
    var totalFirstPart = 0
    var totalSecondPart = 0
    var prelastIndex = (A.count-1)
    for p in 1...prelastIndex {
        if
        for i in 0...(p-1) {
            totalFirstPart += A[i]
        }
        
        for j in p...prelastIndex {
            totalSecondPart += A[j]
        }
        
        let difference = abs(totalFirstPart - totalSecondPart)
        if difference < minimalDifference {
            minimalDifference = difference
        }
        totalFirstPart = 0
        totalSecondPart = 0
    }
    return minimalDifference
}

var arr = [3,1,2,4,3]
print("Tape Equilibrium is \(tapeEquilibriumSolution(&arr))")


