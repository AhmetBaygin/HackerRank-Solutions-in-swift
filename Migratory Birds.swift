import Foundation

func migratoryBirds(arr: [Int]) -> Int {
var frequencyDict = [Int: Int]()
    
    // Creating a dictionary for birds and how frequent they are seen
    for num in arr {
        frequencyDict[num] = (frequencyDict[num] ?? 0) + 1
    }
    
    var sights = 0
    var currBird = 0
    // Goes through the dictionary
    for (b, freq) in frequencyDict {
        // if frequency is greater than sights set it on current bird, if sights are                equal, save the bird with lower value
        if freq > sights {
            currBird = b
            sights = freq
        } else if freq == sights {
            if currBird > b {
                currBird = b
            }
        }
    }
    return currBird
}
