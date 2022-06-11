import Foundation

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var result = 0
    for i in 0..<n{
        for j in (i+1)..<n{
          //must i<j so we begin i+1 and then compare divisible of array sums
            if (ar[i]+ar[j]) % k == 0{
                result += 1
            }
        }
    }
    return result
}
