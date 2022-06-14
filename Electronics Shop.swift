import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var max1 = 0
    for i in keyboards{
        for j in drives{
            if (i+j)<=b && (i+j)>max1{
                max1 = i+j
            }
        }
    }
    return max1 == 0 ? -1 : max1
}
