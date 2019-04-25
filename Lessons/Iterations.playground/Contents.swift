// BINARY GAP

import UIKit

public func solution(_ N : Int) -> Int {
    var openGate: Bool = false
    var closeGate: Bool = false
    var gapCount: Int = 0
    var longest: Int = 0
    
    let binary = String(N, radix: 2, uppercase: true)
    print("The binary is \(binary)")
    
    for chr in binary {
        if !openGate {
            openGate = chr == "1"
            continue
        }
    
        if openGate && chr == "1" {
            if gapCount > longest {
                longest = gapCount
            }
            gapCount = 0
            continue
        }
        
        if openGate && chr == "0" {
            gapCount += 1
        }
    }
    
    return longest
}

print("Longest binary gap is of length \(solution(1162)).")
