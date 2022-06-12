import Foundation

func pageCount(n: Int, p: Int) -> Int {
    var result = 0
    if p == n || p == 1 {
        result = 0
    }
    else if (n % 2 == 1) && (p == n-1){
        result =  0
    }
    else if (n-p)<=(p-1){
        if (n % 2 == 1) && (p % 2 == 0){
            result = (n-p)/2
        }
        else if (n-p) % 2 == 0{
            result = (n-p)/2
        }
        else if (n%2 == 0) && (p%2 == 1){
            result = ((n-p)/2) + 1
        }
    }
    else if (n-p)>(p-1){
        if (p % 2 == 1) {
            result = (p-1)/2
        }
        else  {
            result = ((p-1)/2) + 1
        }
    }
    return result

}
