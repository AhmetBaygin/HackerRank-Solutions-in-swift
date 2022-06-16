import Foundation

func formingMagicSquare(s: [[Int]]) -> Int {
    var result = 81
    var magicsSquare = 
    [[[8, 1, 6], [3, 5, 7], [4, 9, 2]],
     [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
     [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
     [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
     [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
     [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
     [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
     [[2, 7, 6], [9, 5, 1], [4, 3, 8]]]
      //only 8 magicsquare we need and we control it them
     for magics in magicsSquare{
         var cost = 0
         for row in 0...2{
             if magics[row] != s[row]{
                 for num in 0...2{
                     if magics[row][num] != s[row][num]{
                         cost = abs(magics[row][num] - s[row][num]) + cost
                       //change nums added
                     }
                 }
             }
         }
         if cost < result{
             result = cost
         }
       //compared costs and we get less cost
         
     }
     return result
}
