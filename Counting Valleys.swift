import Foundation

//so simple solution no explanation 
func countingValleys(steps: Int, path: String) -> Int {
    
    var hikerSteps = 0
    var result = 0
    for i in path{
        if i == "U"{
            hikerSteps += 1
        }
        if i == "D" {
            hikerSteps -= 1
        }
        if hikerSteps == -1 && i == "D"{
            result += 1
        }  
    }
    return result
}
