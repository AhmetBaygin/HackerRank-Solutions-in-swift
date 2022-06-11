import Foundation

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var ans = 0
    for i in 0...(s.count-m) {
         var sum = 0
      //contiguous segment example s[0] + s[1] .. s[1] + s[2] and then compare sums
         for j in 0..<m {
             sum += s[i+j]
         }
         if sum == d {
             ans += 1
         }
    }
    return ans
}
