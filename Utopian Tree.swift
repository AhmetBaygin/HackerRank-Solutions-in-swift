import Foundation

func utopianTree(n: Int) -> Int {
    var result = 1
    var resultArray = [Int]()
    resultArray.append(result)
    for i in 1...60{
        if i % 2 == 1{
            result = result * 2
            resultArray.append(result)
        }
        else if i % 2 == 0{
            result = result + 1
            resultArray.append(result)
        }
    }
    return resultArray[n]
}

//No explanation is so simple solution
