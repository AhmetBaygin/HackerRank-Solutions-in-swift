import Foundation

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    var sameArray = bill
    sameArray.remove(at: k)
    var sum = sameArray.reduce(0,+)
    // total amount due 
    if b == (sum/2) {
        print("Bon Appetit")
    }
    else{
        print(b-sum/2)
    }
}
