class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var answer: [String] = []
        var common: [String: Int] = [:]
        var min = Int.max
        
        for i in 0..<list1.count {
            common[list1[i]] = i
        }
        for i in 0..<list2.count {
            if let indexCommon = common[list2[i]] {
                let sumIndex = indexCommon + i
                if sumIndex == min {
                    answer.append(list2[i])
                } else if sumIndex < min {
                    min = sumIndex
                    answer = [list2[i]]
                }
            }
        }
        return answer
    }
}
