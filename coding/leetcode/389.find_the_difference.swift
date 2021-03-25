class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
//         var frequency: [Character: Int] = [:]
//         for c in s {
//             frequency[c, default: 0] += 1
//         }
//         for c in t {
//             guard let count = frequency[c], count > 0 else {
//                 return c
//             }
//             frequency[c] = count - 1
//         }
        
//         return "a"
        var result: UInt32 = 0
        for char in s.unicodeScalars {
            result ^= char.value
        }
        for char in t.unicodeScalars {
            result ^= char.value
        }
        return Character(UnicodeScalar(result)!)
    }
}
