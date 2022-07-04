import Foundation

func designerPdfViewer(h: [Int], word: String) -> Int {
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var resultArray = [Int]()
    var max = 0
    for letter in word{
        resultArray.append(alphabet.firstIndex(of : String(letter))!)
    }
    for result in resultArray{
        if h[result] > max{
            max = h[result]
        }
    }
    return max*word.count
}
