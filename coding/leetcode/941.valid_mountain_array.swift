class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        guard arr.count >= 3 else {
            return false
        }
        guard arr[1] > arr[0] else {
            return false
        }
        var up = true
        for i in 1..<arr.count {
            if arr[i] == arr[i-1] {
                return false
            }
            if arr[i] > arr[i-1] {
                if !up {
                    return false
                }
            } else if up {
                    up.toggle()
                }
            }
        }
        return !up
    }
}
