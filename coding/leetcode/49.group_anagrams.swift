// O(nwlogw), O(nw)
class Solution {
     func groupAnagrams(_ strs: [String]) -> [[String]] {
         guard !strs.isEmpty else {
             return []
         }
         var result: [String: [String]] = [:]

         for i in 0..<strs.count {
             let key = String(strs[i].sorted())
             result[key, default: []].append(strs[i])
         }

         return Array(result.values)
     }
    
    // O(nw), O(nw)
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        guard !strs.isEmpty else {
//            return []
//        }
//        var result: [[Character: Int]: [String]] = [:]
//
//        for i in 0..<strs.count {
//            var key: [Character: Int] = [:]
//            for c in strs[i] {
//                key[c, default: 0] += 1
//            }
//            result[key, default: []].append(strs[i])
//        }
//
//        return Array(result.values)
//    }
}

