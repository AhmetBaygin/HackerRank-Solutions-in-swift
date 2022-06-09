import Foundation

func breakingRecords(scores: [Int]) -> [Int] {
    var resultMin = 0
    var resultMax = 0
    var initialValueMin = scores[0]
    var initialValueMax = scores[0]
    var resultArray = [Int]()
    for i in scores{
        if i > initialValueMax{
            initialValueMax = i
            resultMax+=1
        }
        if i < initialValueMin{
            initialValueMin = i
            resultMin+=1
            
        }
    }
    resultArray.append(resultMax)
    resultArray.append(resultMin)
    return resultArray
}
