import Foundation

func kaprekarNumbers(p: Int, q: Int) -> Void {
    var sum1 = 0
    var resultArray = [Int]()
    for i in stride(from: p, through: q, by: 1){
        var oldNumberCount = String(i).count
        var squareOfi = i*i
        var numberCount = String(squareOfi).count
        if (numberCount == 2*oldNumberCount) || (numberCount == 2*oldNumberCount-1){
            var divided  = pow(10,oldNumberCount)
            var forDecimal = Int(NSDecimalNumber(decimal : divided))
            //convert decimal to Int for divided and remainder process
            sum1 = squareOfi/forDecimal + squareOfi%forDecimal
        }
        if sum1 == i{
            resultArray.append(i)
        }
        sum1 = 0
    }
    if resultArray.isEmpty {
        print("INVALID RANGE")
    }
    else{
        resultArray.map{print($0,terminator : " ")}
    }
}
