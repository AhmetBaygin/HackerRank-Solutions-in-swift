import Foundation

func plusMinus(arr: [Int]) -> Void {
    var pos : Double = 0
    var notr : Double = 0
    var neg : Double = 0
    for i in arr{
        if i > 0{
            pos += 1
        }
        else if i == 0{
            notr += 1
        }
        else {
            neg += 1
        }
    }
    var sums : Double = pos + notr + neg
    var result1 = String(format : "%.6f", pos/sums)
    var result2 = String(format : "%.6f" , notr/sums)
    var result3 = String(format : "%.6f", neg/sums)
    print(result1,result3,result2 , separator : "\n")

}
