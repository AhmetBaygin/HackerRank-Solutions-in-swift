import Foundation

func pickingNumbers(a: [Int]) -> Int {
    var sonuc = 0
    var result = 0
    var result2 = 0
    for i in a{
        for j in a{
            if i == j || (i == j + 1){
                result += 1
            }
            if i == j || (i == j - 1){
                result2 += 1
            }
        }
        if result2 > result{
            result = result2
        }
        
        if result > sonuc{
            sonuc = result
        }
        result = 0
        result2 = 0
    }
    return sonuc
}
