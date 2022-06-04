import UIKit

func getTotalX(a: [Int], b: [Int]) -> Int {
    var firstArray = [Int]()
    // firstarray for a array
    var lastArray = [Int]()
    //lastArray for b array
    var sonuc = false
    var sonuc2 = false
    for i in 1...100{
        for first in a{
            if i % first == 0{
                sonuc = true
            }
            else if i % first != 0 {
                sonuc = false
                break
            }
        }
        if sonuc{
            firstArray.append(i)    
        }
        
    }
    //first I found 1-100 multiply a array
    for k in firstArray{
        for j in b{
            if j%k == 0{
                sonuc2 = true
            }
            else if j%k != 0{
                sonuc2 = false
                break
            }
        }
        if sonuc2{
            lastArray.append(k)
        }
        
    }
    //after I found b array multiply firstArray
    //and last them count
    return lastArray.count

}
