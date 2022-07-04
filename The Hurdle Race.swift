import Foundation


func hurdleRace(k: Int, height: [Int]) -> Int {
    return height.max()! <= k ? 0 : height.max()!-k
}
