import Foundation

func combination(n: Int, r: Int) -> Int {
    guard r > 0 else { return 1 }
    return stride(from: n, through: n - r + 1, by: -1).reduce(1, *) / (1...r).reduce(1, *)
}

let N = Int(readLine()!)!
(0...N).forEach { i in
    print(pow(0.5, Double(N)) * Double(combination(n: N, r: i)))
}
