import UIKit

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    for times in 0..<K {
        guard let last = A.last else {
            return A
        }
        A.insert(last, at: 0)
        A.removeLast()
        print("Temp", A)
    }
    return A
}

var arr = [3, 8, 9, 7, 6]
print("The result is", solution(&arr, 4))
