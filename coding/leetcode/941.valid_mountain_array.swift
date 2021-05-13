class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        // guard arr.count >= 3 else {
        //     return false
        // }
        // guard arr[1] > arr[0] else {
        //     return false
        // }
        // var up = true
        // for i in 1..<arr.count {
        //     if arr[i] == arr[i-1] {
        //         return false
        //     }
        //     if arr[i] > arr[i-1] {
        //         if !up {
        //             return false
        //         }
        //     } else if up {
        //             up.toggle()
        //         }
        //     }
        // }
        // return !up
        guard arr.count > 2 else { return false }
        var i = 0
        var j = arr.count - 1
        while i < arr.count - 1 && arr[i + 1] > arr[i] {
            i += 1
        }
        while j > 0 && arr[j - 1] > arr[j] {
            j -= 1
        }
        return i == j && i > 0 && j < arr.count - 1
    }
}
