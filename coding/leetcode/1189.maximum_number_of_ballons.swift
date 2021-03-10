class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
//         var ocurrences: [Character: Int] = ["b": 0, "a": 0, "l": 0, "o": 0, "n": 0]
            
//         for char in text {
//             if let count = ocurrences[char] {
//                 ocurrences[char] = count + 1   
//             }
//         }
//         return min(ocurrences["b", default: 0],
//                                       min(ocurrences["a", default: 0],
//                                           min(ocurrences["l", default: 0] / 2,
//                                               min(ocurrences["o", default: 0] / 2,
//                                                   ocurrences["n", default: 0]))))
        
        var b = 0, a = 0, l = 0, o = 0, n = 0
        for char in text {
            switch char {
                case "b": b += 2
                case "a": a += 2
                case "l": l += 1
                case "o": o += 1
                case "n": n += 2 
                default: continue
            }
        }
        return min(b, min(a, min(l, min(o, n)))) / 2
    }
}
