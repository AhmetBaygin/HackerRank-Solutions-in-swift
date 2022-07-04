import Foundation

func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    var ranking: [Int] = []
    var result = [Int]()

    for score in ranked{
        if ranking.isEmpty {
            ranking.append(score)
        } else if ranking[ranking.count-1] > score{
            ranking.append(score)
        }
    }

    for item in player{
        while !ranking.isEmpty && ranking[ranking.count - 1] <= item {
            ranking.removeLast()
        }
        print(ranking.count + 1)
        result.append(ranking.count+1)
    }
    return result
}
